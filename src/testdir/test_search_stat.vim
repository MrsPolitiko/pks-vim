" Tests for search_stats, when "S" is not in 'shortmess'
"
" This test is fragile, it might not work interactively, but it works when run
" as test!

source shared.vim

func! Test_search_stat()
  new
  set shortmess-=S
  " Append 50 lines with text to search for, "foobar" appears 20 times
  call append(0, repeat(['foobar', 'foo', 'fooooobar', 'foba', 'foobar'], 10))

  " 1) match at second line
  call cursor(1, 1)
  let @/ = 'fo*\(bar\?\)\?'
  let g:a = execute(':unsilent :norm! n')
  let stat = '\[2/50\]'
  let pat = escape(@/, '()*?'). '\s\+'
  call assert_match(pat .. stat, g:a)

  " 2) Match at last line
  call cursor(line('$')-2, 1)
  let g:a = execute(':unsilent :norm! n')
  let stat = '\[50/50\]'
  call assert_match(pat .. stat, g:a)

  " 3) No search stat
  set shortmess+=S
  call cursor(1, 1)
  let stat = '\[2/50\]'
  let g:a = execute(':unsilent :norm! n')
  call assert_notmatch(pat .. stat, g:a)
  set shortmess-=S

  " 4) Many matches
  call cursor(line('$')-2, 1)
  let @/ = '.'
  let pat = escape(@/, '()*?'). '\s\+'
  let g:a = execute(':unsilent :norm! n')
  let stat = '\[>99/>99\]'
  call assert_match(pat .. stat, g:a)
  call cursor(line('$'), 1)
  let g:a = execute(':unsilent :norm! n')
  let stat = '\[1/>99\] W'
  call assert_match(pat .. stat, g:a)

  " 5) Many matches
  call cursor(1, 1)
  let g:a = execute(':unsilent :norm! n')
  let stat = '\[2/>99\]'
  call assert_match(pat .. stat, g:a)
  call cursor(1, 1)
  let g:a = execute(':unsilent :norm! N')
  let stat = '\[>99/>99\] W'
  call assert_match(pat .. stat, g:a)

  " 6) right-left
  if exists("+rightleft")
    set rl
    call cursor(1,1)
    let @/ = 'foobar'
    let pat = 'raboof/\s\+'
    let g:a = execute(':unsilent :norm! n')
    let stat = '\[20/2\]'
    call assert_match(pat .. stat, g:a)
    set norl
  endif

  " 7) right-left bottom
  if exists("+rightleft")
    set rl
    call cursor('$',1)
    let pat = 'raboof?\s\+'
    let g:a = execute(':unsilent :norm! N')
    let stat = '\[20/20\]'
    call assert_match(pat .. stat, g:a)
    set norl
  endif

  " 8) right-left back at top
  if exists("+rightleft")
    set rl
    call cursor('$',1)
    let pat = 'raboof/\s\+'
    let g:a = execute(':unsilent :norm! n')
    let stat = '\[20/1\]'
    call assert_match(pat .. stat, g:a)
    call assert_match('search hit BOTTOM, continuing at TOP', g:a)
    set norl
  endif

  " 9) normal, back at bottom
  call cursor(1,1)
  let @/ = 'foobar'
  let pat = '?foobar\s\+'
  let g:a = execute(':unsilent :norm! N')
  let stat = '\[20/20\]'
  call assert_match(pat .. stat, g:a)
  call assert_match('search hit TOP, continuing at BOTTOM', g:a)
  call assert_match('\[20/20\] W', Screenline(&lines))

  " 10) normal, no match
  call cursor(1,1)
  let @/ = 'zzzzzz'
  let g:a = ''
  try
    let g:a = execute(':unsilent :norm! n')
  catch /^Vim\%((\a\+)\)\=:E486/
    let stat = ''
    " error message is not redir'ed to g:a, it is empty
    call assert_true(empty(g:a))
  catch
    call assert_false(1)
  endtry

  " 11) with count
  call cursor(1, 1)
  let @/ = 'fo*\(bar\?\)\?'
  let g:a = execute(':unsilent :norm! 2n')
  let stat = '\[3/50\]'
  let pat = escape(@/, '()*?'). '\s\+'
  call assert_match(pat .. stat, g:a)
  let g:a = execute(':unsilent :norm! 2n')
  let stat = '\[5/50\]'
  call assert_match(pat .. stat, g:a)

  " 12) with offset
  call cursor(1, 1)
  call feedkeys("/fo*\\(bar\\?\\)\\?/+1\<cr>", 'tx')
  let g:a = execute(':unsilent :norm! n')
  let stat = '\[5/50\]'
  let pat = escape(@/ .. '/+1', '()*?'). '\s\+'
  call assert_match(pat .. stat, g:a)

  " 13) normal, n comes from a mapping
  "     Need to move over more than 64 lines to trigger char_avail(.
  nnoremap n nzv
  call cursor(1,1)
  call append(50, repeat(['foobar', 'foo', 'fooooobar', 'foba', 'foobar'], 10))
  call setline(2, 'find this')
  call setline(70, 'find this')
  let @/ = 'find this'
  let pat = '/find this\s\+'
  let g:a = execute(':unsilent :norm n')
  " g:a will contain several lines
  let g:b = split(g:a, "\n")[-1]
  let stat = '\[1/2\]'
  call assert_match(pat .. stat, g:b)
  unmap n

  " 14) normal, but silent
  call cursor(1,1)
  let @/ = 'find this'
  let pat = '/find this\s\+'
  let g:a = execute(':norm! n')
  let stat = '\[1/2\]'
  call assert_notmatch(pat .. stat, g:a)

  " close the window
  set shortmess+=S
  bwipe!
endfunc
