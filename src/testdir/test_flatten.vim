" Test for flatting list.
func Test_flatten()
  call assert_fails('call flatten(1)', 'E686:')
  call assert_fails('call flatten({})', 'E686:')
  call assert_fails('call flatten("string")', 'E686:')
  call assert_fails('call flatten([], [])', 'E745:')
  call assert_fails('call flatten([], -1)', 'E964: maxdepth')

  call assert_equal([], flatten([]))
  call assert_equal([], flatten([[]]))
  call assert_equal([[]], flatten([[[]]]))

  call assert_equal([1, 2, 3], flatten([1, 2, 3]))
  call assert_equal([1, 2, 3], flatten([[1], 2, 3]))
  call assert_equal([1, 2, 3], flatten([1, [2], 3]))
  call assert_equal([1, 2, 3], flatten([1, 2, [3]]))
  call assert_equal([1, 2, 3], flatten([[1], [2], 3]))
  call assert_equal([1, 2, 3], flatten([1, [2], [3]]))
  call assert_equal([1, 2, 3], flatten([[1], 2, [3]]))
  call assert_equal([1, 2, 3], flatten([[1], [2], [3]]))

  call assert_equal([1, 2, 3], flatten([[1, 2, 3], []]))
  call assert_equal([1, 2, 3], flatten([[], [1, 2, 3]]))
  call assert_equal([1, 2, 3], flatten([[1, 2], [], [3]]))
  call assert_equal([1, 2, 3], flatten([[], [1, 2, 3], []]))

  call assert_equal([0, [1], 2, [3], 4], flatten([[0, [1]], 2, [[3], 4]], 1))
  call assert_equal([1, 2, 3], flatten([[[[1]]], [2], [3]], 3))
  call assert_equal([[1], [2], [3]], flatten([[[1], [2], [3]]], 1))
  call assert_equal([[1]], flatten([[1]], 0))

  " Make it flatten if the given maxdepth is larger than actual depth.
  call assert_equal([1, 2, 3], flatten([[1, 2, 3]], 1))
  call assert_equal([1, 2, 3], flatten([[1, 2, 3]], 2))

  let l:list = [[1], [2], [3]]
  call assert_equal([1, 2, 3], flatten(l:list))
  call assert_equal([1, 2, 3], l:list)

  " Tests for checking reference counter works well.
  let l:x = {'foo': 'bar'}
  call assert_equal([1, 2, l:x, 3], flatten([1, [2, l:x], 3]))
  call garbagecollect()
  call assert_equal('bar', l:x.foo)

  let l:list = [[1], [2], [3]]
  call assert_equal([1, 2, 3], flatten(l:list))
  call garbagecollect()
  call assert_equal([1, 2, 3], l:list)

  " Tests for checking circular reference list can be flatten.
  let l:x = [1]
  let l:y = [x]
  let l:z = flatten(l:y)
  call assert_equal([1], l:z)
  call garbagecollect()
  let l:x[0] = 2
  call assert_equal([2], l:x)
  call assert_equal([1], l:z) " NOTE: primitive types are copied.
  call assert_equal([1], l:y)

  let l:x = [2]
  let l:y = [1, [l:x], 3] " [1, [[2]], 3]
  let l:z = flatten(l:y, 1)
  call assert_equal([1, [2], 3], l:z)
  let l:x[0] = 9
  call assert_equal([1, [9], 3], l:z) " Reference to l:x is kept.
  call assert_equal([1, [9], 3], l:y)

  let l:x = [1]
  let l:y = [2]
  call add(x, y) " l:x = [1, [2]]
  call add(y, x) " l:y = [2, [1, [...]]]
  call assert_equal([1, 2, 1, 2], flatten(l:x, 2))
  call assert_equal([2, l:x], l:y)
endfunc
