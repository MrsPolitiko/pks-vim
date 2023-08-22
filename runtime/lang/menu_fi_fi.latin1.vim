" Menu Translations:	  Finnish
" Maintainer:           Ada (Haowen) Yu <me@yuhaowen.com>
" Previous Maintainer:  Flammie Pirinen <flammie@iki.fi>
" Last Change:          2022 July 10
" Original translations
"
" Generated with the scripts from:
"
"       https://github.com/adaext/vim-menutrans-helper

" Quit when menu translations have already been done.

if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo = &cpo
set cpo&vim

scriptencoding latin1

" Help menu
menutrans &Help &Ohje
" Help menuitems and dialog {{{1
menutrans &Overview<Tab><F1> &Yleiskatsaus<Tab><F1>
menutrans &User\ Manual &K�ytt�ohje
menutrans &How-to\ Links K&UINKA-linkkej�
menutrans &Find\.\.\. &Hae\.\.\.
menutrans &Credits &Tekij�t
menutrans Co&pying &Lisenssi
menutrans &Sponsor/Register Sponsoroi/&Rekister�i
menutrans O&rphans &Orvoista
menutrans &Version &Versio
menutrans &About T&ietoja

" fun! s:Helpfind()
if !exists("g:menutrans_help_dialog")
  let g:menutrans_help_dialog = "Anna komento tai sana, jota haetaan ohjeesta.\n\nAloita i_:ll� sy�tt�tilan komentoja varten (esim. i_CTRL-X)\nAloita c_:ll� komentorivi� varten (esim. c_<Del>)\nKirjoita asetukset puolilainausmerkkeijin (esim. 'shiftwidth')"
endif
" }}}

" File menu
menutrans &File &Tiedosto
" File menuitems {{{1
menutrans &Open\.\.\.<Tab>:e &Avaa\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp Avaa\ &jaettuna\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew Avaa\ &tabissa\.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew &Uusi<Tab>:enew
menutrans &Close<Tab>:close &Sulje<Tab>:close
menutrans &Save<Tab>:w Talle&nna<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav Tallenna\ n&imell�\.\.\.<Tab>:sav
menutrans Split\ &Diff\ With\.\.\. Jaa\ &diffill�\.\.\.
menutrans Split\ Patched\ &By\.\.\. Jaa\ &patchilla\.\.\.
menutrans &Print Tul&osta
menutrans Sa&ve-Exit<Tab>:wqa Tall&enna\ ja\ lopeta<Tab>:wqa
menutrans E&xit<Tab>:qa &Lopeta<Tab>:qa
" }}}

" Edit menu
menutrans &Edit &Muokkaa
" Edit menuitems {{{1
menutrans &Undo<Tab>u &Kumoa<Tab>u
menutrans &Redo<Tab>^R &Palauta<Tab>^R
menutrans Rep&eat<Tab>\. &Toista<Tab>\.
menutrans Cu&t<Tab>"+x &Leikkaa<Tab>"+x
menutrans &Copy<Tab>"+y K&opioi<Tab>"+y
menutrans &Paste<Tab>"+gP L&iit�<Tab>"+gP
menutrans Put\ &Before<Tab>[p Lis��\ &ennen<Tab>[p
menutrans Put\ &After<Tab>]p Lis��\ &j�lkeen<Tab>]p
menutrans &Delete<Tab>x Poi&sta<Tab>x
menutrans &Select\ All<Tab>ggVG V&alitse\ kaikki<Tab>ggVG
menutrans &Find\.\.\. &Hae\.\.\.
menutrans Find\ and\ Rep&lace\.\.\. Hae\ ja\ ko&rvaa\.\.\.
menutrans &Find<Tab>/ &Hae<Tab>/
menutrans Find\ and\ Rep&lace<Tab>:%s Hae\ ja\ ko&rvaa<Tab>:%s
menutrans Find\ and\ Rep&lace<Tab>:s Hae\ ja\ ko&rvaa<Tab>:s
menutrans Settings\ &Window Aset&usikkuna
menutrans Startup\ &Settings &K�ynnistysasetukset

" Edit/Global Settings
menutrans &Global\ Settings &Yleiset\ asetukset
" Edit.Global Settings menuitems and dialogs {{{2
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls! &Korostus<Tab>:set\ hls!
" menutrans Toggle\ &Ignoring\ Case<Tab>:set\ ic! TRANSLATION\ MISSING
" menutrans Toggle\ &Showing\ Matched\ Pairs<Tab>:set\ sm! TRANSLATION\ MISSING
menutrans &Context\ Lines &Huomioitavat\ kontekstirivit
menutrans &Virtual\ Edit &Virtuaalimuokkaus
" Edit.Global Settings.Virtual Edit menuitems {{{3
menutrans Never &Ei\ koskaan
menutrans Block\ Selection &Lohkovalinta
menutrans Insert\ Mode &Sy�tt�tila
menutrans Block\ and\ Insert L&ohkosy�tt�tila
menutrans Always &Aina
" }}}
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im! S&y�tt�tila<Tab>:set\ im!
" menutrans Toggle\ Vi\ C&ompatibility<Tab>:set\ cp! TRANSLATION\ MISSING
menutrans Search\ &Path\.\.\. H&akupolku\.\.\.
menutrans Ta&g\ Files\.\.\. &T�gitiedostot\.\.\.

" GUI options
menutrans Toggle\ &Toolbar Ty�ka&lupalkki
menutrans Toggle\ &Bottom\ Scrollbar Vaakavi&erityspalkki
menutrans Toggle\ &Left\ Scrollbar Vasen\ &pystyvierityspalkki
menutrans Toggle\ &Right\ Scrollbar Oikea\ pystyvie&rityspalkki

" fun! s:SearchP()
if !exists("g:menutrans_path_dialog")
  let g:menutrans_path_dialog = "Anna tiedostojen hakupolku.\nErota hakemistot pilkuin."
endif

" fun! s:TagFiles()
if !exists("g:menutrans_tags_dialog")
  let g:menutrans_tags_dialog = "Anna t�gitiedostojen nimet.\nErota tidostot pilkuin."
endif
" }}}

" Edit/File Settings
menutrans F&ile\ Settings Tiedostoasetu&kset
" Edit.File Settings menuitems and dialogs {{{2
" Boolean options
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu! Rivi&numerointi<Tab>:set\ nu!
" menutrans Toggle\ Relati&ve\ Line\ Numbering<Tab>:set\ rnu! TRANSLATION\ MISSING
menutrans Toggle\ &List\ Mode<Tab>:set\ list! &Listaustila<Tab>:set\ list!
" menutrans Toggle\ Line\ &Wrapping<Tab>:set\ wrap! TRANSLATION\ MISSING
" menutrans Toggle\ W&rapping\ at\ Word<Tab>:set\ lbr! TRANSLATION\ MISSING
" menutrans Toggle\ Tab\ &Expanding<Tab>:set\ et! TRANSLATION\ MISSING
" menutrans Toggle\ &Auto\ Indenting<Tab>:set\ ai! TRANSLATION\ MISSING
" menutrans Toggle\ &C-Style\ Indenting<Tab>:set\ cin! TRANSLATION\ MISSING

" other options
menutrans &Shiftwidth S&isennysleveys
menutrans Soft\ &Tabstop N�enn�ista&bulointi
menutrans Te&xt\ Width\.\.\. Tekstinl&eveys\.\.\.
menutrans &File\ Format\.\.\. Tiedosto&muoto\.\.\.

" fun! s:TextWidth()
if !exists("g:menutrans_textwidth_dialog")
  let g:menutrans_textwidth_dialog = "Anna uusi tekstin leveys\n(0 poistaa k�yt�st�)"
endif

" fun! s:FileFormat()
if !exists("g:menutrans_fileformat_dialog")
  let g:menutrans_fileformat_dialog = "Anaa tiedoston kirjoitusmuoto."
endif
if !exists("g:menutrans_fileformat_choices")
  let g:menutrans_fileformat_choices = " &Unix \n &Dos \n &Mac \n &Peru "
endif
" }}}
" menutrans Show\ C&olor\ Schemes\ in\ Menu TRANSLATION\ MISSING
menutrans C&olor\ Scheme &V�riteema
menutrans None Ei\ mik��n
" menutrans Show\ &Keymaps\ in\ Menu TRANSLATION\ MISSING
menutrans &Keymap &N�pp�inkartta
menutrans Select\ Fo&nt\.\.\. Valitse\ &fontti\.\.\.
" }}}

" Programming menu
menutrans &Tools T&y�kalut
" Tools menuitems {{{1
menutrans &Jump\ to\ This\ Tag<Tab>g^] Siirry\ t�giin<Tab>g^]
menutrans Jump\ &Back<Tab>^T Siirry\ takaisin<Tab>^T
menutrans Build\ &Tags\ File Luo\ t�gitiedosto

" Tools.Spelling Menu
menutrans &Spelling &Oikeinkirjoitus
" Tools.Spelling menuitems and dialog {{{2
menutrans &Spell\ Check\ On &Oikaisuluku\ p��lle
menutrans Spell\ Check\ &Off &Oikaisuluku\ pois\ p��lt�
menutrans To\ &Next\ Error<Tab>]s &Seuraavaan\ virheeseen<Tab>]s
menutrans To\ &Previous\ Error<Tab>[s &Edelliseen\ virheeseen<Tab>[s
menutrans Suggest\ &Corrections<Tab>z= Ehdota\ &korjausta<Tab>z=
menutrans &Repeat\ Correction<Tab>:spellrepall &Toista\ korjaus<Tab>:spellrepall
menutrans Set\ Language\ to\ "en" Aseta\ kieleksi\ en
menutrans Set\ Language\ to\ "en_au" Aseta\ kieleksi\ en_au
menutrans Set\ Language\ to\ "en_ca" Aseta\ kieleksi\ en_ca
menutrans Set\ Language\ to\ "en_gb" Aseta\ kieleksi\ en_gb
menutrans Set\ Language\ to\ "en_nz" Aseta\ kieleksi\ en_nz
menutrans Set\ Language\ to\ "en_us" Aseta\ kieleksi\ en_us
menutrans &Find\ More\ Languages Hae\ lis��\ kieli�

" func! s:SpellLang()
if !exists("g:menutrans_set_lang_to")
  " let g:menutrans_set_lang_to = "TRANSLATION MISSING"
endif
" }}}

" Tools.Fold Menu
menutrans &Folding &Taitokset
" Tools.Fold menuitems {{{2
" open close folds
menutrans &Enable/Disable\ Folds<Tab>zi &Taitokset<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv &N�yt�\ kursorin\ rivi<Tab>zv
menutrans Vie&w\ Cursor\ Line\ Only<Tab>zMzx N�yt�\ &vain\ kursorin\ rivi<Tab>zMzx
menutrans C&lose\ More\ Folds<Tab>zm &Sulje\ lis��\ taitoksia<Tab>zm
menutrans &Close\ All\ Folds<Tab>zM &Sulje\ kaikki\ taitokset<Tab>zM
menutrans O&pen\ More\ Folds<Tab>zr &Avaa\ lis��\ taitoksia<Tab>zr
menutrans &Open\ All\ Folds<Tab>zR &Avaa\ kaikki\ taitokset<Tab>zR
" fold method
menutrans Fold\ Met&hod Taitteluta&pa
" Tools.Fold.Fold Method menuitems {{{3
menutrans M&anual &Manuaalinen
menutrans I&ndent S&isennys
menutrans E&xpression I&lmaus
menutrans S&yntax &Syntaksi
menutrans &Diff &Diffit
menutrans Ma&rker &Merkit
" }}}
" create and delete folds
menutrans Create\ &Fold<Tab>zf T&ee\ taitos<Tab>zf
menutrans &Delete\ Fold<Tab>zd P&oista\ taitos<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD Poista\ &kaikki\ taitokset<Tab>zD
" moving around in folds
menutrans Fold\ Col&umn\ Width Taitossarakkeen\ &leveys
" }}}

" Tools.Diff Menu
menutrans &Diff &Diffit
" Tools.Diff menuitems {{{2
menutrans &Update &P�ivit�
menutrans &Get\ Block &Hae\ lohko
menutrans &Put\ Block &Lis��\ lohko
" }}}

menutrans &Make<Tab>:make &Make<Tab>:make
menutrans &List\ Errors<Tab>:cl Virheluettelo<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl! Virheviestit<Tab>:cl!
menutrans &Next\ Error<Tab>:cn Seuraava\ virhe<Tab>:cn
menutrans &Previous\ Error<Tab>:cp Edellinen\ virhe<Tab>:cp
menutrans &Older\ List<Tab>:cold Edellinen\ lista<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew Seuraava\ lista<Tab>:cnew
menutrans Error\ &Window Virheikkuna
" Tools.Error Window menuitems {{{2
menutrans &Update<Tab>:cwin &P�ivit�<Tab>:cwin
menutrans &Open<Tab>:copen &Avaa<Tab>:copen
menutrans &Close<Tab>:cclose &Sulje<Tab>:cclose
" }}}
" menutrans Show\ Compiler\ Se&ttings\ in\ Menu TRANSLATION\ MISSING
menutrans Se&t\ Compiler Ase&ta\ k��nt�j�
menutrans &Convert\ to\ HEX<Tab>:%!xxd Muunna\ heksoiksi<Tab>:%!xxd
menutrans Conve&rt\ Back<Tab>:%!xxd\ -r Muunna\ takaisin<Tab>:%!xxd\ -r
" }}}

" Buffer menu
menutrans &Buffers &Puskurit
menutrans Dummy Dummy
" Buffer menuitems and dialog {{{1
menutrans &Refresh\ Menu P�ivit�\ &valikko
menutrans &Delete &Poista
menutrans &Alternate V&aihda
menutrans &Next &Seuraava
menutrans &Previous &Edellinen

" func! s:BMMunge(fname, bnum)
if !exists("g:menutrans_no_file")
  let g:menutrans_no_file = "[Ei tiedostoja]"
endif
" }}}

" Window menu
menutrans &Window &Ikkuna
" Window menuitems {{{1
menutrans &New<Tab>^Wn &Uusi\ ikkuna<Tab>^Wn
menutrans S&plit<Tab>^Ws &Jaa<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^ &Jaa\ #<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv Jaa\ &pystysuunnassa<Tab>^Wv
menutrans Split\ File\ E&xplorer Jaa\ &tiedostonhallinnalle
menutrans &Close<Tab>^Wc &Sulje<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo Sulje\ &muut<Tab>^Wo
menutrans Move\ &To S&iirr�
menutrans &Top<Tab>^WK &Yl�s<Tab>^WK
menutrans &Bottom<Tab>^WJ &Alas<Tab>^WJ
menutrans &Left\ Side<Tab>^WH &Oikealle<Tab>^WH
menutrans &Right\ Side<Tab>^WL &Vasemmalle<Tab>^WL
menutrans Rotate\ &Up<Tab>^WR Vaihda\ &ylemm�s<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr Vaihda\ &alemmas<Tab>^Wr
menutrans &Equal\ Size<Tab>^W= Saman\ &kokoisiksi<Tab>^W=
menutrans &Max\ Height<Tab>^W_ Enimm�isk&orkeuteen<Tab>^W_
menutrans M&in\ Height<Tab>^W1_ V�himm�isk&orkeuteen<Tab>^W1_
menutrans Max\ &Width<Tab>^W\| Enimm�is&leveyteen<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\| V�himm�is&leveyteen<Tab>^W1\|
" }}}

" The popup menu {{{1
menutrans &Undo &Kumoa
menutrans Cu&t &Leikkaa
menutrans &Copy &Kopioi
menutrans &Paste L&iit�
menutrans &Delete &Poista
menutrans Select\ Blockwise Valitse\ lohkoittain
menutrans Select\ &Word Valitse\ &sana
" menutrans Select\ &Sentence TRANSLATION\ MISSING
" menutrans Select\ Pa&ragraph TRANSLATION\ MISSING
menutrans Select\ &Line Valitse\ &rivi
menutrans Select\ &Block Valitse\ &lohko
menutrans Select\ &All Valitse\ &kaikki

" func! <SID>SpellPopup()
if !exists("g:menutrans_spell_change_ARG_to")
  " let g:menutrans_spell_change_ARG_to = "TRANSLATION MISSING"
endif
if !exists("g:menutrans_spell_add_ARG_to_word_list")
  " let g:menutrans_spell_add_ARG_to_word_list = "TRANSLATION MISSING"
endif
if !exists("g:menutrans_spell_ignore_ARG")
  " let g:menutrans_spell_ignore_ARG = "TRANSLATION MISSING"
endif
" }}}

" The GUI toolbar {{{1
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    let did_toolbar_tmenu = 1
    tmenu ToolBar.Open Avaa tiedosto
    tmenu ToolBar.Save Tallenna nykyinen tiedosto
    tmenu ToolBar.SaveAll Tallenna kaikki tiedostot
    tmenu ToolBar.Print Tulosta
    tmenu ToolBar.Undo Kumoa
    tmenu ToolBar.Redo Palauta
    tmenu ToolBar.Cut Leikkaa
    tmenu ToolBar.Copy Kopioi
    tmenu ToolBar.Paste Liit�
    if !has("gui_athena")
      tmenu ToolBar.Replace Korvaa
      tmenu ToolBar.FindNext Hae seuraava
      tmenu ToolBar.FindPrev Hae edellinen
    endif
    tmenu ToolBar.LoadSesn Avaa sessio
    tmenu ToolBar.SaveSesn Tallenna nykyinen sessio
    tmenu ToolBar.RunScript Lataa vim-skripti
    tmenu ToolBar.Make Suorita make
    tmenu ToolBar.RunCtags Suorita CTags
    tmenu ToolBar.TagJump Hypp�� t�giin
    tmenu ToolBar.Help Vimin ohje
    tmenu ToolBar.FindHelp Etsi ohjeesta
  endfun
endif
" }}}

" Syntax menu
menutrans &Syntax &Syntaksi
" Syntax menuitems {{{1
" menutrans &Show\ File\ Types\ in\ Menu TRANSLATION\ MISSING
menutrans &Off &Pois\ p��lt�
menutrans &Manual &Manuaalinen
menutrans A&utomatic &Automaattinen
menutrans On/Off\ for\ &This\ File Kytke\ &t�lle\ tiedostolle
menutrans Co&lor\ Test Testaa\ v�rit
menutrans &Highlight\ Test Testaa\ korostukset
menutrans &Convert\ to\ HTML Muunna\ HTML:ksi

" From synmenu.vim
menutrans Set\ '&syntax'\ Only Aseta\ vain\ &syntax
menutrans Set\ '&filetype'\ Too Aseta\ my�s\ &filetype
" menutrans AB TRANSLATION\ MISSING
" menutrans A2ps\ config TRANSLATION\ MISSING
" menutrans Aap TRANSLATION\ MISSING
" menutrans ABAP/4 TRANSLATION\ MISSING
" menutrans Abaqus TRANSLATION\ MISSING
menutrans ABC\ music\ notation ABC\ (notation\ musicale)
" menutrans ABEL TRANSLATION\ MISSING
menutrans AceDB\ model Mod�le\ AceDB
" menutrans Ada TRANSLATION\ MISSING
" menutrans AfLex TRANSLATION\ MISSING
" menutrans ALSA\ config TRANSLATION\ MISSING
" menutrans Altera\ AHDL TRANSLATION\ MISSING
" menutrans Amiga\ DOS TRANSLATION\ MISSING
" menutrans AMPL TRANSLATION\ MISSING
" menutrans Ant\ build\ file TRANSLATION\ MISSING
" menutrans ANTLR TRANSLATION\ MISSING
menutrans Apache\ config Config\.\ Apache
menutrans Apache-style\ config Config\.\ style\ Apache
" menutrans Applix\ ELF TRANSLATION\ MISSING
" menutrans APT\ config TRANSLATION\ MISSING
" menutrans Arc\ Macro\ Language TRANSLATION\ MISSING
" menutrans Arch\ inventory TRANSLATION\ MISSING
" menutrans Arduino TRANSLATION\ MISSING
" menutrans ART TRANSLATION\ MISSING
" menutrans Ascii\ Doc TRANSLATION\ MISSING
menutrans ASP\ with\ VBScript ASP\ avec\ VBScript
menutrans ASP\ with\ Perl ASP\ avec\ Perl
menutrans Assembly Assembleur
" menutrans 680x0 TRANSLATION\ MISSING
" menutrans AVR TRANSLATION\ MISSING
" menutrans Flat TRANSLATION\ MISSING
" menutrans GNU TRANSLATION\ MISSING
" menutrans GNU\ H-8300 TRANSLATION\ MISSING
" menutrans Intel\ IA-64 TRANSLATION\ MISSING
" menutrans Microsoft TRANSLATION\ MISSING
" menutrans Netwide TRANSLATION\ MISSING
" menutrans PIC TRANSLATION\ MISSING
" menutrans Turbo TRANSLATION\ MISSING
" menutrans VAX\ Macro\ Assembly TRANSLATION\ MISSING
" menutrans Z-80 TRANSLATION\ MISSING
" menutrans xa\ 6502\ cross\ assember TRANSLATION\ MISSING
" menutrans ASN\.1 TRANSLATION\ MISSING
" menutrans Asterisk\ config TRANSLATION\ MISSING
" menutrans Asterisk\ voicemail\ config TRANSLATION\ MISSING
" menutrans Atlas TRANSLATION\ MISSING
" menutrans Autodoc TRANSLATION\ MISSING
" menutrans AutoHotKey TRANSLATION\ MISSING
" menutrans AutoIt TRANSLATION\ MISSING
" menutrans Automake TRANSLATION\ MISSING
" menutrans Avenue TRANSLATION\ MISSING
" menutrans Awk TRANSLATION\ MISSING
" menutrans AYacc TRANSLATION\ MISSING
" menutrans B TRANSLATION\ MISSING
" menutrans Baan TRANSLATION\ MISSING
" menutrans Bash TRANSLATION\ MISSING
" menutrans Basic TRANSLATION\ MISSING
" menutrans FreeBasic TRANSLATION\ MISSING
" menutrans IBasic TRANSLATION\ MISSING
" menutrans QBasic TRANSLATION\ MISSING
" menutrans Visual\ Basic TRANSLATION\ MISSING
" menutrans Bazaar\ commit\ file TRANSLATION\ MISSING
" menutrans Bazel TRANSLATION\ MISSING
menutrans BC\ calculator Calculateur\ BC
menutrans BDF\ font Fonte\ BDF
" menutrans BibTeX TRANSLATION\ MISSING
" menutrans Bibliography\ database TRANSLATION\ MISSING
" menutrans Bibliography\ Style TRANSLATION\ MISSING
" menutrans BIND TRANSLATION\ MISSING
menutrans BIND\ config Config\.\ BIND
menutrans BIND\ zone Zone\ BIND
" menutrans Blank TRANSLATION\ MISSING
" menutrans C TRANSLATION\ MISSING
" menutrans C++ TRANSLATION\ MISSING
" menutrans C# TRANSLATION\ MISSING
" menutrans Cabal\ Haskell\ build\ file TRANSLATION\ MISSING
" menutrans Calendar TRANSLATION\ MISSING
menutrans Cascading\ Style\ Sheets Feuilles\ de\ style\ en\ cascade
" menutrans CDL TRANSLATION\ MISSING
" menutrans Cdrdao\ TOC TRANSLATION\ MISSING
" menutrans Cdrdao\ config TRANSLATION\ MISSING
" menutrans Century\ Term TRANSLATION\ MISSING
" menutrans CH\ script TRANSLATION\ MISSING
" menutrans ChaiScript TRANSLATION\ MISSING
" menutrans Changelog TRANSLATION\ MISSING
" menutrans CHILL TRANSLATION\ MISSING
menutrans Cheetah\ template Patron\ Cheetah
" menutrans Chicken TRANSLATION\ MISSING
" menutrans ChordPro TRANSLATION\ MISSING
" menutrans Clean TRANSLATION\ MISSING
" menutrans Clever TRANSLATION\ MISSING
" menutrans Clipper TRANSLATION\ MISSING
" menutrans Clojure TRANSLATION\ MISSING
" menutrans Cmake TRANSLATION\ MISSING
" menutrans Cmod TRANSLATION\ MISSING
" menutrans Cmusrc TRANSLATION\ MISSING
" menutrans Cobol TRANSLATION\ MISSING
" menutrans Coco/R TRANSLATION\ MISSING
" menutrans Cold\ Fusion TRANSLATION\ MISSING
" menutrans Conary\ Recipe TRANSLATION\ MISSING
" menutrans Config TRANSLATION\ MISSING
menutrans Cfg\ Config\ file Fichier\ de\ config\.\ \.cfg
" menutrans Configure\.in TRANSLATION\ MISSING
menutrans Generic\ Config\ file Fichier\ de\ config\.\ g�n�rique
" menutrans CRM114 TRANSLATION\ MISSING
" menutrans Crontab TRANSLATION\ MISSING
" menutrans CSDL TRANSLATION\ MISSING
" menutrans CSP TRANSLATION\ MISSING
" menutrans Ctrl-H TRANSLATION\ MISSING
" menutrans Cucumber TRANSLATION\ MISSING
" menutrans CUDA TRANSLATION\ MISSING
" menutrans CUPL TRANSLATION\ MISSING
" menutrans Simulation TRANSLATION\ MISSING
" menutrans CVS TRANSLATION\ MISSING
menutrans commit\ file Fichier\ commit
" menutrans cvsrc TRANSLATION\ MISSING
" menutrans Cyn++ TRANSLATION\ MISSING
" menutrans Cynlib TRANSLATION\ MISSING
" menutrans DE TRANSLATION\ MISSING
" menutrans D TRANSLATION\ MISSING
" menutrans Dart TRANSLATION\ MISSING
" menutrans Datascript TRANSLATION\ MISSING
" menutrans Debian TRANSLATION\ MISSING
" menutrans Debian\ ChangeLog TRANSLATION\ MISSING
" menutrans Debian\ Control TRANSLATION\ MISSING
" menutrans Debian\ Copyright TRANSLATION\ MISSING
" menutrans Debian\ Sources\.list TRANSLATION\ MISSING
" menutrans Denyhosts TRANSLATION\ MISSING
" menutrans Desktop TRANSLATION\ MISSING
" menutrans Dict\ config TRANSLATION\ MISSING
" menutrans Dictd\ config TRANSLATION\ MISSING
" menutrans Diff TRANSLATION\ MISSING
menutrans Digital\ Command\ Lang DCL
" menutrans Dircolors TRANSLATION\ MISSING
" menutrans Dirpager TRANSLATION\ MISSING
" menutrans Django\ template TRANSLATION\ MISSING
menutrans DNS/BIND\ zone Zone\ BIND/DNS
" menutrans Dnsmasq\ config TRANSLATION\ MISSING
" menutrans DocBook TRANSLATION\ MISSING
" menutrans auto-detect TRANSLATION\ MISSING
" menutrans SGML TRANSLATION\ MISSING
" menutrans XML TRANSLATION\ MISSING
" menutrans Dockerfile TRANSLATION\ MISSING
" menutrans Dot TRANSLATION\ MISSING
" menutrans Doxygen TRANSLATION\ MISSING
" menutrans C\ with\ doxygen TRANSLATION\ MISSING
" menutrans C++\ with\ doxygen TRANSLATION\ MISSING
" menutrans IDL\ with\ doxygen TRANSLATION\ MISSING
" menutrans Java\ with\ doxygen TRANSLATION\ MISSING
" menutrans DataScript\ with\ doxygen TRANSLATION\ MISSING
" menutrans Dracula TRANSLATION\ MISSING
" menutrans DSSSL TRANSLATION\ MISSING
" menutrans DTD TRANSLATION\ MISSING
" menutrans DTML\ (Zope) TRANSLATION\ MISSING
" menutrans DTrace TRANSLATION\ MISSING
" menutrans Dts/dtsi TRANSLATION\ MISSING
" menutrans Dune TRANSLATION\ MISSING
" menutrans Dylan TRANSLATION\ MISSING
menutrans Dylan\ interface Interface
menutrans Dylan\ lid LID
" menutrans EDIF TRANSLATION\ MISSING
" menutrans Eiffel TRANSLATION\ MISSING
" menutrans Eight TRANSLATION\ MISSING
" menutrans Elinks\ config TRANSLATION\ MISSING
menutrans Elm\ filter\ rules R�gles\ de\ filtrage\ Elm
" menutrans Embedix\ Component\ Description TRANSLATION\ MISSING
menutrans ERicsson\ LANGuage Erlang\ (langage\ Ericsson)
" menutrans ESMTP\ rc TRANSLATION\ MISSING
" menutrans ESQL-C TRANSLATION\ MISSING
menutrans Essbase\ script Script\ Essbase
" menutrans Esterel TRANSLATION\ MISSING
menutrans Eterm\ config Config\.\ Eterm
" menutrans Euphoria\ 3 TRANSLATION\ MISSING
" menutrans Euphoria\ 4 TRANSLATION\ MISSING
" menutrans Eviews TRANSLATION\ MISSING
menutrans Exim\ conf Config\.\ Exim
" menutrans Expect TRANSLATION\ MISSING
" menutrans Exports TRANSLATION\ MISSING
" menutrans FG TRANSLATION\ MISSING
" menutrans Falcon TRANSLATION\ MISSING
" menutrans Fantom TRANSLATION\ MISSING
" menutrans Fetchmail TRANSLATION\ MISSING
" menutrans FlexWiki TRANSLATION\ MISSING
" menutrans Focus\ Executable TRANSLATION\ MISSING
" menutrans Focus\ Master TRANSLATION\ MISSING
" menutrans FORM TRANSLATION\ MISSING
" menutrans Forth TRANSLATION\ MISSING
" menutrans Fortran TRANSLATION\ MISSING
" menutrans FoxPro TRANSLATION\ MISSING
" menutrans FrameScript TRANSLATION\ MISSING
" menutrans Fstab TRANSLATION\ MISSING
" menutrans Fvwm TRANSLATION\ MISSING
menutrans Fvwm\ configuration Config\.\ Fvwm
menutrans Fvwm2\ configuration Config\.\ Fvwm2
menutrans Fvwm2\ configuration\ with\ M4 Config\.\ Fvwm2\ avec\ M4
menutrans GDB\ command\ file Fichier\ de\ commandes\ GDB
" menutrans GDMO TRANSLATION\ MISSING
" menutrans Gedcom TRANSLATION\ MISSING
" menutrans Git TRANSLATION\ MISSING
" menutrans Output TRANSLATION\ MISSING
" menutrans Commit TRANSLATION\ MISSING
" menutrans Rebase TRANSLATION\ MISSING
" menutrans Send\ Email TRANSLATION\ MISSING
" menutrans Gitolite TRANSLATION\ MISSING
" menutrans Gkrellmrc TRANSLATION\ MISSING
" menutrans Gnash TRANSLATION\ MISSING
" menutrans Go TRANSLATION\ MISSING
" menutrans Godoc TRANSLATION\ MISSING
" menutrans GP TRANSLATION\ MISSING
" menutrans GPG TRANSLATION\ MISSING
" menutrans Grof TRANSLATION\ MISSING
" menutrans Group\ file TRANSLATION\ MISSING
" menutrans Grub TRANSLATION\ MISSING
" menutrans GNU\ Server\ Pages TRANSLATION\ MISSING
" menutrans GNUplot TRANSLATION\ MISSING
" menutrans GrADS\ scripts TRANSLATION\ MISSING
" menutrans Gretl TRANSLATION\ MISSING
" menutrans Groff TRANSLATION\ MISSING
" menutrans Groovy TRANSLATION\ MISSING
" menutrans GTKrc TRANSLATION\ MISSING
" menutrans HIJK TRANSLATION\ MISSING
" menutrans Haml TRANSLATION\ MISSING
" menutrans Hamster TRANSLATION\ MISSING
" menutrans Haskell TRANSLATION\ MISSING
" menutrans Haskell-c2hs TRANSLATION\ MISSING
" menutrans Haskell-literate TRANSLATION\ MISSING
" menutrans HASTE TRANSLATION\ MISSING
" menutrans HASTE\ preproc TRANSLATION\ MISSING
" menutrans Hercules TRANSLATION\ MISSING
" menutrans Hex\ dump TRANSLATION\ MISSING
" menutrans XXD TRANSLATION\ MISSING
" menutrans Intel\ MCS51 TRANSLATION\ MISSING
" menutrans Hg\ commit TRANSLATION\ MISSING
" menutrans Hollywood TRANSLATION\ MISSING
" menutrans HTML TRANSLATION\ MISSING
menutrans HTML\ with\ M4 HTML\ avec\ M4
" menutrans HTML\ with\ Ruby\ (eRuby) TRANSLATION\ MISSING
menutrans Cheetah\ HTML\ template Patron\ Cheetah\ pour\ HTML
" menutrans Django\ HTML\ template TRANSLATION\ MISSING
" menutrans Vue TRANSLATION\ MISSING
" menutrans js\ HTML\ template TRANSLATION\ MISSING
" menutrans HTML/OS TRANSLATION\ MISSING
" menutrans XHTML TRANSLATION\ MISSING
" menutrans Host\.conf TRANSLATION\ MISSING
" menutrans Hosts\ access TRANSLATION\ MISSING
" menutrans Hyper\ Builder TRANSLATION\ MISSING
" menutrans Icewm\ menu TRANSLATION\ MISSING
" menutrans Icon TRANSLATION\ MISSING
menutrans IDL\Generic\ IDL IDL\IDL\ g�n�rique
menutrans IDL\Microsoft\ IDL IDL\IDL\ Microsoft
menutrans Indent\ profile Profil\ Indent
" menutrans Inform TRANSLATION\ MISSING
" menutrans Informix\ 4GL TRANSLATION\ MISSING
" menutrans Initng TRANSLATION\ MISSING
" menutrans Inittab TRANSLATION\ MISSING
menutrans Inno\ setup Config\.\ Inno
" menutrans Innovation\ Data\ Processing TRANSLATION\ MISSING
" menutrans Upstream\ dat TRANSLATION\ MISSING
" menutrans Upstream\ log TRANSLATION\ MISSING
" menutrans Upstream\ rpt TRANSLATION\ MISSING
" menutrans Upstream\ Install\ log TRANSLATION\ MISSING
" menutrans Usserver\ log TRANSLATION\ MISSING
" menutrans USW2KAgt\ log TRANSLATION\ MISSING
menutrans InstallShield\ script Script\ InstallShield
" menutrans Interactive\ Data\ Lang TRANSLATION\ MISSING
" menutrans IPfilter TRANSLATION\ MISSING
" menutrans J TRANSLATION\ MISSING
" menutrans JAL TRANSLATION\ MISSING
" menutrans JAM TRANSLATION\ MISSING
" menutrans Jargon TRANSLATION\ MISSING
" menutrans Java TRANSLATION\ MISSING
" menutrans JavaCC TRANSLATION\ MISSING
" menutrans Java\ Server\ Pages TRANSLATION\ MISSING
" menutrans Java\ Properties TRANSLATION\ MISSING
" menutrans JavaScript TRANSLATION\ MISSING
" menutrans JavaScriptReact TRANSLATION\ MISSING
" menutrans Jess TRANSLATION\ MISSING
" menutrans Jgraph TRANSLATION\ MISSING
" menutrans Jovial TRANSLATION\ MISSING
" menutrans JSON TRANSLATION\ MISSING
" menutrans Kconfig TRANSLATION\ MISSING
menutrans KDE\ script Script\ KDE
" menutrans Kimwitu++ TRANSLATION\ MISSING
" menutrans Kivy TRANSLATION\ MISSING
" menutrans KixTart TRANSLATION\ MISSING
" menutrans L TRANSLATION\ MISSING
" menutrans Lace TRANSLATION\ MISSING
" menutrans LamdaProlog TRANSLATION\ MISSING
" menutrans Latte TRANSLATION\ MISSING
" menutrans Ld\ script TRANSLATION\ MISSING
" menutrans LDAP TRANSLATION\ MISSING
" menutrans LDIF TRANSLATION\ MISSING
" menutrans Configuration TRANSLATION\ MISSING
" menutrans Less TRANSLATION\ MISSING
" menutrans Lex TRANSLATION\ MISSING
menutrans LFTP\ config Config\.\ LFTP
" menutrans Libao TRANSLATION\ MISSING
menutrans LifeLines\ script Script\ LifeLines
" menutrans Lilo TRANSLATION\ MISSING
" menutrans Limits\ config TRANSLATION\ MISSING
" menutrans Linden\ scripting TRANSLATION\ MISSING
" menutrans Liquid TRANSLATION\ MISSING
" menutrans Lisp TRANSLATION\ MISSING
" menutrans Lite TRANSLATION\ MISSING
" menutrans LiteStep\ RC TRANSLATION\ MISSING
" menutrans Locale\ Input TRANSLATION\ MISSING
" menutrans Login\.access TRANSLATION\ MISSING
" menutrans Login\.defs TRANSLATION\ MISSING
" menutrans Logtalk TRANSLATION\ MISSING
" menutrans LOTOS TRANSLATION\ MISSING
" menutrans LotusScript TRANSLATION\ MISSING
" menutrans Lout TRANSLATION\ MISSING
" menutrans LPC TRANSLATION\ MISSING
" menutrans Lua TRANSLATION\ MISSING
menutrans Lynx\ Style Style\ Lynx
menutrans Lynx\ config Config\.\ Lynx
" menutrans M TRANSLATION\ MISSING
" menutrans M4 TRANSLATION\ MISSING
" menutrans MaGic\ Point TRANSLATION\ MISSING
" menutrans Mail\ aliases TRANSLATION\ MISSING
" menutrans Mailcap TRANSLATION\ MISSING
" menutrans Mallard TRANSLATION\ MISSING
" menutrans Makefile TRANSLATION\ MISSING
" menutrans MakeIndex TRANSLATION\ MISSING
menutrans Man\ page Page\ Man
" menutrans Man\.conf TRANSLATION\ MISSING
" menutrans Maple\ V TRANSLATION\ MISSING
" menutrans Markdown TRANSLATION\ MISSING
" menutrans Markdown\ with\ R\ statements TRANSLATION\ MISSING
" menutrans Mason TRANSLATION\ MISSING
" menutrans Mathematica TRANSLATION\ MISSING
" menutrans Matlab TRANSLATION\ MISSING
" menutrans Maxima TRANSLATION\ MISSING
menutrans MEL\ (for\ Maya) MEL\ (pour\ Maya)
" menutrans Meson TRANSLATION\ MISSING
" menutrans Messages\ (/var/log) TRANSLATION\ MISSING
" menutrans Metafont TRANSLATION\ MISSING
" menutrans MetaPost TRANSLATION\ MISSING
" menutrans MGL TRANSLATION\ MISSING
" menutrans MIX TRANSLATION\ MISSING
" menutrans MMIX TRANSLATION\ MISSING
" menutrans Modconf TRANSLATION\ MISSING
" menutrans Model TRANSLATION\ MISSING
" menutrans Modsim\ III TRANSLATION\ MISSING
" menutrans Modula\ 2 TRANSLATION\ MISSING
" menutrans Modula\ 3 TRANSLATION\ MISSING
" menutrans Monk TRANSLATION\ MISSING
" menutrans Motorola\ S-Record TRANSLATION\ MISSING
" menutrans Mplayer\ config TRANSLATION\ MISSING
" menutrans MOO TRANSLATION\ MISSING
" menutrans Mrxvtrc TRANSLATION\ MISSING
" menutrans MS-DOS/Windows TRANSLATION\ MISSING
menutrans 4DOS\ \.bat\ file Fichier\ \.bat\ 4DOS
menutrans \.bat\/\.cmd\ file Fichier\ \.bat\ /\ \.cmd
menutrans \.ini\ file Fichier\ \.ini
" menutrans Message\ text TRANSLATION\ MISSING
menutrans Module\ Definition D�finition\ de\ module
menutrans Registry Extrait\ du\ registre
menutrans Resource\ file Fichier\ de\ ressources
" menutrans Msql TRANSLATION\ MISSING
" menutrans MuPAD TRANSLATION\ MISSING
" menutrans Murphi TRANSLATION\ MISSING
" menutrans MUSHcode TRANSLATION\ MISSING
" menutrans Muttrc TRANSLATION\ MISSING
" menutrans NO TRANSLATION\ MISSING
" menutrans N1QL TRANSLATION\ MISSING
" menutrans Nanorc TRANSLATION\ MISSING
" menutrans Nastran\ input/DMAP TRANSLATION\ MISSING
" menutrans Natural TRANSLATION\ MISSING
" menutrans NeoMutt\ setup\ files TRANSLATION\ MISSING
" menutrans Netrc TRANSLATION\ MISSING
" menutrans Ninja TRANSLATION\ MISSING
menutrans Novell\ NCF\ batch Batch\ Novell\ NCF
" menutrans Not\ Quite\ C\ (LEGO) TRANSLATION\ MISSING
" menutrans Nroff TRANSLATION\ MISSING
menutrans NSIS\ script Script\ NSIS
" menutrans Obj\ 3D\ wavefront TRANSLATION\ MISSING
" menutrans Objective\ C TRANSLATION\ MISSING
" menutrans Objective\ C++ TRANSLATION\ MISSING
" menutrans OCAML TRANSLATION\ MISSING
" menutrans Occam TRANSLATION\ MISSING
" menutrans Omnimark TRANSLATION\ MISSING
" menutrans OpenROAD TRANSLATION\ MISSING
" menutrans Open\ Psion\ Lang TRANSLATION\ MISSING
menutrans Oracle\ config Config\.\ Oracle
" menutrans PQ TRANSLATION\ MISSING
" menutrans Packet\ filter\ conf TRANSLATION\ MISSING
menutrans Palm\ resource\ compiler Compil\.\ de\ resources\ Palm
" menutrans Pam\ config TRANSLATION\ MISSING
" menutrans PApp TRANSLATION\ MISSING
" menutrans Pascal TRANSLATION\ MISSING
" menutrans Password\ file TRANSLATION\ MISSING
" menutrans PCCTS TRANSLATION\ MISSING
" menutrans PDF TRANSLATION\ MISSING
" menutrans Perl TRANSLATION\ MISSING
" menutrans Perl\ 6 TRANSLATION\ MISSING
" menutrans Perl\ POD TRANSLATION\ MISSING
" menutrans Perl\ XS TRANSLATION\ MISSING
" menutrans Template\ toolkit TRANSLATION\ MISSING
" menutrans Template\ toolkit\ Html TRANSLATION\ MISSING
" menutrans Template\ toolkit\ JS TRANSLATION\ MISSING
" menutrans PHP TRANSLATION\ MISSING
menutrans PHP\ 3-4 PHP\ 3\ et\ 4
" menutrans Phtml\ (PHP\ 2) TRANSLATION\ MISSING
" menutrans Pike TRANSLATION\ MISSING
" menutrans Pine\ RC TRANSLATION\ MISSING
" menutrans Pinfo\ RC TRANSLATION\ MISSING
" menutrans PL/M TRANSLATION\ MISSING
" menutrans PL/SQL TRANSLATION\ MISSING
" menutrans Pli TRANSLATION\ MISSING
" menutrans PLP TRANSLATION\ MISSING
" menutrans PO\ (GNU\ gettext) TRANSLATION\ MISSING
menutrans Postfix\ main\ config Config\.\ Postfix
" menutrans PostScript TRANSLATION\ MISSING
" menutrans PostScript\ Printer\ Description TRANSLATION\ MISSING
" menutrans Povray TRANSLATION\ MISSING
menutrans Povray\ scene\ descr Sc�ne\ Povray
menutrans Povray\ configuration Config\.\ Povray
" menutrans PPWizard TRANSLATION\ MISSING
" menutrans Prescribe\ (Kyocera) TRANSLATION\ MISSING
" menutrans Printcap TRANSLATION\ MISSING
" menutrans Privoxy TRANSLATION\ MISSING
" menutrans Procmail TRANSLATION\ MISSING
" menutrans Product\ Spec\ File TRANSLATION\ MISSING
" menutrans Progress TRANSLATION\ MISSING
" menutrans Prolog TRANSLATION\ MISSING
" menutrans ProMeLa TRANSLATION\ MISSING
" menutrans Proto TRANSLATION\ MISSING
" menutrans Protocols TRANSLATION\ MISSING
menutrans Purify\ log Log\ Purify
" menutrans Pyrex TRANSLATION\ MISSING
" menutrans Python TRANSLATION\ MISSING
" menutrans Quake TRANSLATION\ MISSING
" menutrans Quickfix\ window TRANSLATION\ MISSING
" menutrans R TRANSLATION\ MISSING
" menutrans R\ help TRANSLATION\ MISSING
" menutrans R\ noweb TRANSLATION\ MISSING
" menutrans Racc\ input TRANSLATION\ MISSING
" menutrans Radiance TRANSLATION\ MISSING
" menutrans Raml TRANSLATION\ MISSING
" menutrans Ratpoison TRANSLATION\ MISSING
" menutrans RCS TRANSLATION\ MISSING
menutrans RCS\ log\ output Log\ RCS
menutrans RCS\ file Fichier\ RCS
menutrans Readline\ config Config\.\ Readline
" menutrans Rebol TRANSLATION\ MISSING
" menutrans ReDIF TRANSLATION\ MISSING
" menutrans Rego TRANSLATION\ MISSING
" menutrans Relax\ NG TRANSLATION\ MISSING
" menutrans Remind TRANSLATION\ MISSING
" menutrans Relax\ NG\ compact TRANSLATION\ MISSING
" menutrans Renderman TRANSLATION\ MISSING
" menutrans Renderman\ Shader\ Lang TRANSLATION\ MISSING
" menutrans Renderman\ Interface\ Bytestream TRANSLATION\ MISSING
" menutrans Resolv\.conf TRANSLATION\ MISSING
" menutrans Reva\ Forth TRANSLATION\ MISSING
" menutrans Rexx TRANSLATION\ MISSING
" menutrans Robots\.txt TRANSLATION\ MISSING
menutrans RockLinux\ package\ desc\. Desc\.\ pkg\.\ RockLinux
" menutrans Rpcgen TRANSLATION\ MISSING
" menutrans RPL/2 TRANSLATION\ MISSING
" menutrans ReStructuredText TRANSLATION\ MISSING
" menutrans ReStructuredText\ with\ R\ statements TRANSLATION\ MISSING
" menutrans RTF TRANSLATION\ MISSING
" menutrans Ruby TRANSLATION\ MISSING
" menutrans Rust TRANSLATION\ MISSING
" menutrans S-Sm TRANSLATION\ MISSING
" menutrans S-Lang TRANSLATION\ MISSING
menutrans Samba\ config Config\.\ Samba
" menutrans SAS TRANSLATION\ MISSING
" menutrans Sass TRANSLATION\ MISSING
" menutrans Sather TRANSLATION\ MISSING
" menutrans Sbt TRANSLATION\ MISSING
" menutrans Scala TRANSLATION\ MISSING
" menutrans Scheme TRANSLATION\ MISSING
" menutrans Scilab TRANSLATION\ MISSING
" menutrans Screen\ RC TRANSLATION\ MISSING
" menutrans SCSS TRANSLATION\ MISSING
" menutrans SDC\ Synopsys\ Design\ Constraints TRANSLATION\ MISSING
" menutrans SDL TRANSLATION\ MISSING
" menutrans Sed TRANSLATION\ MISSING
" menutrans Sendmail\.cf TRANSLATION\ MISSING
" menutrans Send-pr TRANSLATION\ MISSING
" menutrans Sensors\.conf TRANSLATION\ MISSING
" menutrans Service\ Location\ config TRANSLATION\ MISSING
" menutrans Service\ Location\ registration TRANSLATION\ MISSING
" menutrans Service\ Location\ SPI TRANSLATION\ MISSING
" menutrans Services TRANSLATION\ MISSING
" menutrans Setserial\ config TRANSLATION\ MISSING
menutrans SGML\ catalog Catalogue\ SGML
menutrans SGML\ DTD DTD\ SGML
menutrans SGML\ Declaration D�claration\ SGML
" menutrans SGML-linuxdoc TRANSLATION\ MISSING
menutrans Shell\ script Script\ shell
menutrans sh\ and\ ksh sh\ et\ ksh
" menutrans csh TRANSLATION\ MISSING
" menutrans tcsh TRANSLATION\ MISSING
" menutrans zsh TRANSLATION\ MISSING
" menutrans SiCAD TRANSLATION\ MISSING
" menutrans Sieve TRANSLATION\ MISSING
" menutrans Simula TRANSLATION\ MISSING
" menutrans Sinda TRANSLATION\ MISSING
menutrans Sinda\ compare Comparaison\ Sinda
menutrans Sinda\ input Entr�e\ Sinda
menutrans Sinda\ output Sortie\ Sinda
" menutrans SiSU TRANSLATION\ MISSING
" menutrans SKILL TRANSLATION\ MISSING
menutrans SKILL\ for\ Diva SKILL\ pour\ Diva
" menutrans Slice TRANSLATION\ MISSING
" menutrans SLRN TRANSLATION\ MISSING
" menutrans Slrn\ rc TRANSLATION\ MISSING
" menutrans Slrn\ score TRANSLATION\ MISSING
" menutrans SmallTalk TRANSLATION\ MISSING
menutrans Smarty\ Templates Patrons\ Smarty
" menutrans SMIL TRANSLATION\ MISSING
" menutrans SMITH TRANSLATION\ MISSING
" menutrans Sn-Sy TRANSLATION\ MISSING
" menutrans SNMP\ MIB TRANSLATION\ MISSING
" menutrans SNNS TRANSLATION\ MISSING
menutrans SNNS\ network R�seau\ SNNS
menutrans SNNS\ pattern Motif\ SNNS
menutrans SNNS\ result R�sultat\ SNNS
" menutrans Snobol4 TRANSLATION\ MISSING
menutrans Snort\ Configuration Config\.\ Snort
" menutrans SPEC\ (Linux\ RPM) TRANSLATION\ MISSING
" menutrans Specman TRANSLATION\ MISSING
" menutrans Spice TRANSLATION\ MISSING
" menutrans Spyce TRANSLATION\ MISSING
" menutrans Speedup TRANSLATION\ MISSING
" menutrans Splint TRANSLATION\ MISSING
menutrans Squid\ config Config\.\ Squid
" menutrans SQL TRANSLATION\ MISSING
" menutrans SAP\ HANA TRANSLATION\ MISSING
" menutrans MySQL TRANSLATION\ MISSING
" menutrans SQL\ Anywhere TRANSLATION\ MISSING
" menutrans SQL\ (automatic) TRANSLATION\ MISSING
" menutrans SQL\ (Oracle) TRANSLATION\ MISSING
" menutrans SQL\ Forms TRANSLATION\ MISSING
" menutrans SQLJ TRANSLATION\ MISSING
" menutrans SQL-Informix TRANSLATION\ MISSING
" menutrans SQR TRANSLATION\ MISSING
" menutrans Ssh TRANSLATION\ MISSING
" menutrans ssh_config TRANSLATION\ MISSING
" menutrans sshd_config TRANSLATION\ MISSING
" menutrans Standard\ ML TRANSLATION\ MISSING
" menutrans Stata TRANSLATION\ MISSING
" menutrans SMCL TRANSLATION\ MISSING
" menutrans Stored\ Procedures TRANSLATION\ MISSING
" menutrans Strace TRANSLATION\ MISSING
" menutrans Streaming\ descriptor\ file TRANSLATION\ MISSING
menutrans Subversion\ commit Commit\ Subversion
" menutrans Sudoers TRANSLATION\ MISSING
" menutrans SVG TRANSLATION\ MISSING
" menutrans Symbian\ meta-makefile TRANSLATION\ MISSING
" menutrans Sysctl\.conf TRANSLATION\ MISSING
" menutrans Systemd TRANSLATION\ MISSING
" menutrans SystemVerilog TRANSLATION\ MISSING
" menutrans T TRANSLATION\ MISSING
" menutrans TADS TRANSLATION\ MISSING
" menutrans Tags TRANSLATION\ MISSING
" menutrans TAK TRANSLATION\ MISSING
menutrans TAK\ compare Comparaison\ TAK
menutrans TAK\ input Entr�e\ TAK
menutrans TAK\ output Sortie\ TAK
" menutrans Tar\ listing TRANSLATION\ MISSING
" menutrans Task\ data TRANSLATION\ MISSING
" menutrans Task\ 42\ edit TRANSLATION\ MISSING
" menutrans Tcl/Tk TRANSLATION\ MISSING
" menutrans TealInfo TRANSLATION\ MISSING
" menutrans Telix\ Salt TRANSLATION\ MISSING
" menutrans Termcap/Printcap TRANSLATION\ MISSING
" menutrans Terminfo TRANSLATION\ MISSING
" menutrans Tera\ Term TRANSLATION\ MISSING
" menutrans TeX TRANSLATION\ MISSING
" menutrans TeX/LaTeX TRANSLATION\ MISSING
" menutrans plain\ TeX TRANSLATION\ MISSING
" menutrans Initex TRANSLATION\ MISSING
" menutrans ConTeXt TRANSLATION\ MISSING
menutrans TeX\ configuration Config\.\ TeX
" menutrans Texinfo TRANSLATION\ MISSING
menutrans TF\ mud\ client TF\ (client\ MUD)
menutrans Tidy\ configuration Config\.\ Tidy
" menutrans Tilde TRANSLATION\ MISSING
" menutrans Tmux\ configuration TRANSLATION\ MISSING
" menutrans TPP TRANSLATION\ MISSING
menutrans Trasys\ input Entr�e\ Trasys
" menutrans Treetop TRANSLATION\ MISSING
" menutrans Trustees TRANSLATION\ MISSING
" menutrans TSS TRANSLATION\ MISSING
menutrans Command\ Line Ligne\ de\ commande
menutrans Geometry G�om�trie
menutrans Optics Optiques
" menutrans Typescript TRANSLATION\ MISSING
" menutrans TypescriptReact TRANSLATION\ MISSING
" menutrans UV TRANSLATION\ MISSING
" menutrans Udev\ config TRANSLATION\ MISSING
" menutrans Udev\ permissions TRANSLATION\ MISSING
" menutrans Udev\ rules TRANSLATION\ MISSING
" menutrans UIT/UIL TRANSLATION\ MISSING
" menutrans UnrealScript TRANSLATION\ MISSING
" menutrans Updatedb\.conf TRANSLATION\ MISSING
" menutrans Upstart TRANSLATION\ MISSING
" menutrans Valgrind TRANSLATION\ MISSING
" menutrans Vera TRANSLATION\ MISSING
" menutrans Verbose\ TAP\ Output TRANSLATION\ MISSING
" menutrans Verilog-AMS\ HDL TRANSLATION\ MISSING
" menutrans Verilog\ HDL TRANSLATION\ MISSING
" menutrans Vgrindefs TRANSLATION\ MISSING
" menutrans VHDL TRANSLATION\ MISSING
" menutrans Vim TRANSLATION\ MISSING
menutrans Vim\ help\ file Fichier\ d'aide\ Vim
menutrans Vim\ script Script\ Vim
menutrans Viminfo\ file Fichier\ Viminfo
menutrans Virata\ config Config\.\ Virata
" menutrans VOS\ CM\ macro TRANSLATION\ MISSING
" menutrans VRML TRANSLATION\ MISSING
" menutrans Vroom TRANSLATION\ MISSING
" menutrans VSE\ JCL TRANSLATION\ MISSING
" menutrans WXYZ TRANSLATION\ MISSING
" menutrans WEB TRANSLATION\ MISSING
" menutrans CWEB TRANSLATION\ MISSING
" menutrans WEB\ Changes TRANSLATION\ MISSING
" menutrans WebAssembly TRANSLATION\ MISSING
" menutrans Webmacro TRANSLATION\ MISSING
" menutrans Website\ MetaLanguage TRANSLATION\ MISSING
" menutrans wDiff TRANSLATION\ MISSING
menutrans Wget\ config Config\.\ wget
menutrans Whitespace\ (add) Espaces\ et\ tabulations
menutrans WildPackets\ EtherPeek\ Decoder D�codeur\ WildPackets\ EtherPeek
" menutrans WinBatch/Webbatch TRANSLATION\ MISSING
" menutrans Windows\ Scripting\ Host TRANSLATION\ MISSING
" menutrans WSML TRANSLATION\ MISSING
" menutrans WvDial TRANSLATION\ MISSING
" menutrans X\ Keyboard\ Extension TRANSLATION\ MISSING
" menutrans X\ Pixmap TRANSLATION\ MISSING
" menutrans X\ Pixmap\ (2) TRANSLATION\ MISSING
menutrans X\ resources Resources\ X
" menutrans XBL TRANSLATION\ MISSING
" menutrans Xinetd\.conf TRANSLATION\ MISSING
" menutrans Xmodmap TRANSLATION\ MISSING
" menutrans Xmath TRANSLATION\ MISSING
" menutrans XML\ Schema\ (XSD) TRANSLATION\ MISSING
" menutrans XQuery TRANSLATION\ MISSING
" menutrans Xslt TRANSLATION\ MISSING
menutrans XFree86\ Config Config\.\ XFree86
" menutrans YAML TRANSLATION\ MISSING
" menutrans Yacc TRANSLATION\ MISSING
" menutrans Zimbu TRANSLATION\ MISSING
" }}}

" Netrw menu {{{1
" Plugin loading may be after menu translation
" So giveup testing if Netrw Plugin is loaded
" if exists("g:loaded_netrwPlugin")
  " menutrans Help<tab><F1> TRANSLATION\ MISSING
  " menutrans Bookmarks TRANSLATION\ MISSING
  " menutrans History TRANSLATION\ MISSING
  " menutrans Go\ Up\ Directory<tab>- TRANSLATION\ MISSING
  " menutrans Apply\ Special\ Viewer<tab>x TRANSLATION\ MISSING
  " menutrans Bookmarks\ and\ History TRANSLATION\ MISSING
  " Netrw.Bookmarks and History menuitems {{{2
  " menutrans Bookmark\ Current\ Directory<tab>mb TRANSLATION\ MISSING
  " menutrans Bookmark\ Delete TRANSLATION\ MISSING
  " menutrans Goto\ Prev\ Dir\ (History)<tab>u TRANSLATION\ MISSING
  " menutrans Goto\ Next\ Dir\ (History)<tab>U TRANSLATION\ MISSING
  " menutrans List<tab>qb TRANSLATION\ MISSING
  " }}}
  " menutrans Browsing\ Control TRANSLATION\ MISSING
  " Netrw.Browsing Control menuitems {{{2
  " menutrans Horizontal\ Split<tab>o TRANSLATION\ MISSING
  " menutrans Vertical\ Split<tab>v TRANSLATION\ MISSING
  " menutrans New\ Tab<tab>t TRANSLATION\ MISSING
  " menutrans Preview<tab>p TRANSLATION\ MISSING
  " menutrans Edit\ File\ Hiding\ List<tab><ctrl-h> TRANSLATION\ MISSING
  " menutrans Edit\ Sorting\ Sequence<tab>S TRANSLATION\ MISSING
  " menutrans Quick\ Hide/Unhide\ Dot\ Files<tab>gh TRANSLATION\ MISSING
  " menutrans Refresh\ Listing<tab><ctrl-l> TRANSLATION\ MISSING
  " menutrans Settings/Options<tab>:NetrwSettings TRANSLATION\ MISSING
  " }}}
  " menutrans Delete\ File/Directory<tab>D TRANSLATION\ MISSING
  " menutrans Edit\ File/Dir TRANSLATION\ MISSING
  " Netrw.Edit File menuitems {{{2
  " menutrans Create\ New\ File<tab>% TRANSLATION\ MISSING
  " menutrans In\ Current\ Window<tab><cr> TRANSLATION\ MISSING
  " menutrans Preview\ File/Directory<tab>p TRANSLATION\ MISSING
  " menutrans In\ Previous\ Window<tab>P TRANSLATION\ MISSING
  " menutrans In\ New\ Window<tab>o TRANSLATION\ MISSING
  " menutrans In\ New\ Tab<tab>t TRANSLATION\ MISSING
  " menutrans In\ New\ Vertical\ Window<tab>v TRANSLATION\ MISSING
  " }}}
  " menutrans Explore TRANSLATION\ MISSING
  " Netrw.Explore menuitems {{{2
  " menutrans Directory\ Name TRANSLATION\ MISSING
  " menutrans Filenames\ Matching\ Pattern\ (curdir\ only)<tab>:Explore\ */ TRANSLATION\ MISSING
  " menutrans Filenames\ Matching\ Pattern\ (+subdirs)<tab>:Explore\ **/ TRANSLATION\ MISSING
  " menutrans Files\ Containing\ String\ Pattern\ (curdir\ only)<tab>:Explore\ *// TRANSLATION\ MISSING
  " menutrans Files\ Containing\ String\ Pattern\ (+subdirs)<tab>:Explore\ **// TRANSLATION\ MISSING
  " menutrans Next\ Match<tab>:Nexplore TRANSLATION\ MISSING
  " menutrans Prev\ Match<tab>:Pexplore TRANSLATION\ MISSING
  " }}}
  " menutrans Make\ Subdirectory<tab>d TRANSLATION\ MISSING
  " menutrans Marked\ Files TRANSLATION\ MISSING
  " Netrw.Marked Files menuitems {{{2
  " menutrans Mark\ File<tab>mf TRANSLATION\ MISSING
  " menutrans Mark\ Files\ by\ Regexp<tab>mr TRANSLATION\ MISSING
  " menutrans Hide-Show-List\ Control<tab>a TRANSLATION\ MISSING
  " menutrans Copy\ To\ Target<tab>mc TRANSLATION\ MISSING
  " menutrans Delete<tab>D TRANSLATION\ MISSING
  " menutrans Diff<tab>md TRANSLATION\ MISSING
  " menutrans Edit<tab>me TRANSLATION\ MISSING
  " menutrans Exe\ Cmd<tab>mx TRANSLATION\ MISSING
  " menutrans Move\ To\ Target<tab>mm TRANSLATION\ MISSING
  " menutrans Obtain<tab>O TRANSLATION\ MISSING
  " menutrans Print<tab>mp TRANSLATION\ MISSING
  " menutrans Replace<tab>R TRANSLATION\ MISSING
  " menutrans Set\ Target<tab>mt TRANSLATION\ MISSING
  " menutrans Tag<tab>mT TRANSLATION\ MISSING
  " menutrans Zip/Unzip/Compress/Uncompress<tab>mz TRANSLATION\ MISSING
  " }}}
  " menutrans Obtain\ File<tab>O TRANSLATION\ MISSING
  " menutrans Style TRANSLATION\ MISSING
  " Netrw.Style menuitems {{{2
  " menutrans Listing TRANSLATION\ MISSING
  " Netrw.Style.Listing menuitems {{{3
  " menutrans thin<tab>i TRANSLATION\ MISSING
  " menutrans long<tab>i TRANSLATION\ MISSING
  " menutrans wide<tab>i TRANSLATION\ MISSING
  " menutrans tree<tab>i TRANSLATION\ MISSING
  " }}}
  " menutrans Normal-Hide-Show TRANSLATION\ MISSING
  " Netrw.Style.Normal-Hide_show menuitems {{{3
  " menutrans Show\ All<tab>a TRANSLATION\ MISSING
  " menutrans Normal<tab>a TRANSLATION\ MISSING
  " menutrans Hidden\ Only<tab>a TRANSLATION\ MISSING
  " }}}
  " menutrans Reverse\ Sorting\ Order<tab>r TRANSLATION\ MISSING
  " menutrans Sorting\ Method TRANSLATION\ MISSING
  " Netrw.Style.Sorting Method menuitems {{{3
  " menutrans Name<tab>s TRANSLATION\ MISSING
  " menutrans Time<tab>s TRANSLATION\ MISSING
  " menutrans Size<tab>s TRANSLATION\ MISSING
  " menutrans Exten<tab>s TRANSLATION\ MISSING
  " }}}
  " }}}
  " menutrans Rename\ File/Directory<tab>R TRANSLATION\ MISSING
  " menutrans Set\ Current\ Directory<tab>c TRANSLATION\ MISSING
  " menutrans Targets TRANSLATION\ MISSING
" endif
" }}}

" Shellmenu menu
" Shellmenu menuitems {{{1
" From shellmenu.vim
" menutrans ShellMenu TRANSLATION\ MISSING
" menutrans MAIL TRANSLATION\ MISSING
" menutrans eval TRANSLATION\ MISSING
" menutrans Statements TRANSLATION\ MISSING
" menutrans for TRANSLATION\ MISSING
" menutrans case TRANSLATION\ MISSING
" menutrans if TRANSLATION\ MISSING
" menutrans if-else TRANSLATION\ MISSING
" menutrans elif TRANSLATION\ MISSING
" menutrans while TRANSLATION\ MISSING
" menutrans break TRANSLATION\ MISSING
" menutrans continue TRANSLATION\ MISSING
" menutrans function TRANSLATION\ MISSING
" menutrans return TRANSLATION\ MISSING
" menutrans return-true TRANSLATION\ MISSING
" menutrans return-false TRANSLATION\ MISSING
" menutrans exit TRANSLATION\ MISSING
" menutrans shift TRANSLATION\ MISSING
" menutrans trap TRANSLATION\ MISSING
" menutrans Test TRANSLATION\ MISSING
" menutrans Existence TRANSLATION\ MISSING
" menutrans Existence\ -\ file TRANSLATION\ MISSING
" menutrans Existence\ -\ file\ (not\ empty) TRANSLATION\ MISSING
" menutrans Existence\ -\ directory TRANSLATION\ MISSING
" menutrans Existence\ -\ executable TRANSLATION\ MISSING
" menutrans Existence\ -\ readable TRANSLATION\ MISSING
" menutrans Existence\ -\ writable TRANSLATION\ MISSING
" menutrans String\ is\ empty TRANSLATION\ MISSING
" menutrans String\ is\ not\ empty TRANSLATION\ MISSING
" menutrans Strings\ are\ equal TRANSLATION\ MISSING
" menutrans Strings\ are\ not\ equal TRANSLATION\ MISSING
" menutrans Value\ is\ greater\ than TRANSLATION\ MISSING
" menutrans Value\ is\ greater\ equal TRANSLATION\ MISSING
" menutrans Values\ are\ equal TRANSLATION\ MISSING
" menutrans Values\ are\ not\ equal TRANSLATION\ MISSING
" menutrans Value\ is\ less\ than TRANSLATION\ MISSING
" menutrans Value\ is\ less\ equal TRANSLATION\ MISSING
" menutrans ParmSub TRANSLATION\ MISSING
" menutrans Substitute\ word\ if\ parm\ not\ set TRANSLATION\ MISSING
" menutrans Set\ parm\ to\ word\ if\ not\ set TRANSLATION\ MISSING
" menutrans Substitute\ word\ if\ parm\ set\ else\ nothing TRANSLATION\ MISSING
" menutrans If\ parm\ not\ set\ print\ word\ and\ exit TRANSLATION\ MISSING
" menutrans SpShVars TRANSLATION\ MISSING
" menutrans Number\ of\ positional\ parameters TRANSLATION\ MISSING
" menutrans All\ positional\ parameters\ (quoted\ spaces) TRANSLATION\ MISSING
" menutrans All\ positional\ parameters\ (unquoted\ spaces) TRANSLATION\ MISSING
" menutrans Flags\ set TRANSLATION\ MISSING
" menutrans Return\ code\ of\ last\ command TRANSLATION\ MISSING
" menutrans Process\ number\ of\ this\ shell TRANSLATION\ MISSING
" menutrans Process\ number\ of\ last\ background\ command TRANSLATION\ MISSING
" menutrans Environ TRANSLATION\ MISSING
" menutrans HOME TRANSLATION\ MISSING
" menutrans PATH TRANSLATION\ MISSING
" menutrans CDPATH TRANSLATION\ MISSING
" menutrans MAILCHECK TRANSLATION\ MISSING
" menutrans PS1 TRANSLATION\ MISSING
" menutrans PS2 TRANSLATION\ MISSING
" menutrans IFS TRANSLATION\ MISSING
" menutrans SHACCT TRANSLATION\ MISSING
" menutrans SHELL TRANSLATION\ MISSING
" menutrans LC_CTYPE TRANSLATION\ MISSING
" menutrans LC_MESSAGES TRANSLATION\ MISSING
" menutrans Builtins TRANSLATION\ MISSING
" menutrans cd TRANSLATION\ MISSING
" menutrans echo TRANSLATION\ MISSING
" menutrans exec TRANSLATION\ MISSING
" menutrans export TRANSLATION\ MISSING
" menutrans getopts TRANSLATION\ MISSING
" menutrans hash TRANSLATION\ MISSING
" menutrans newgrp TRANSLATION\ MISSING
" menutrans pwd TRANSLATION\ MISSING
" menutrans read TRANSLATION\ MISSING
" menutrans readonly TRANSLATION\ MISSING
" menutrans times TRANSLATION\ MISSING
" menutrans type TRANSLATION\ MISSING
" menutrans umask TRANSLATION\ MISSING
" menutrans wait TRANSLATION\ MISSING
" menutrans Set TRANSLATION\ MISSING
" menutrans unset TRANSLATION\ MISSING
" menutrans Mark\ created\ or\ modified\ variables\ for\ export TRANSLATION\ MISSING
" menutrans Exit\ when\ command\ returns\ non-zero\ status TRANSLATION\ MISSING
" menutrans Disable\ file\ name\ expansion TRANSLATION\ MISSING
" menutrans Locate\ and\ remember\ commands\ when\ being\ looked\ up TRANSLATION\ MISSING
" menutrans All\ assignment\ statements\ are\ placed\ in\ the\ environment\ for\ a\ command TRANSLATION\ MISSING
" menutrans Read\ commands\ but\ do\ not\ execute\ them TRANSLATION\ MISSING
" menutrans Exit\ after\ reading\ and\ executing\ one\ command TRANSLATION\ MISSING
" menutrans Treat\ unset\ variables\ as\ an\ error\ when\ substituting TRANSLATION\ MISSING
" menutrans Print\ shell\ input\ lines\ as\ they\ are\ read TRANSLATION\ MISSING
" menutrans Print\ commands\ and\ their\ arguments\ as\ they\ are\ executed TRANSLATION\ MISSING
" }}}

" termdebug menu
" termdebug menuitems {{{1
" From termdebug.vim
" menutrans Set\ breakpoint TRANSLATION\ MISSING
" menutrans Clear\ breakpoint TRANSLATION\ MISSING
" menutrans Run\ until TRANSLATION\ MISSING
" menutrans Evaluate TRANSLATION\ MISSING
" menutrans WinBar TRANSLATION\ MISSING
" menutrans Step TRANSLATION\ MISSING
" menutrans Next TRANSLATION\ MISSING
" menutrans Finish TRANSLATION\ MISSING
" menutrans Cont TRANSLATION\ MISSING
" menutrans Stop TRANSLATION\ MISSING
" }}}

" debchangelog menu
" debchangelog menuitems {{{1
" From debchangelog.vim
" menutrans &Changelog TRANSLATION\ MISSING
" menutrans &New\ Version TRANSLATION\ MISSING
" menutrans &Add\ Entry TRANSLATION\ MISSING
" menutrans &Close\ Bug TRANSLATION\ MISSING
" menutrans Set\ &Distribution TRANSLATION\ MISSING
" menutrans &unstable TRANSLATION\ MISSING
" menutrans &frozen TRANSLATION\ MISSING
" menutrans &stable TRANSLATION\ MISSING
" menutrans frozen\ unstable TRANSLATION\ MISSING
" menutrans stable\ unstable TRANSLATION\ MISSING
" menutrans stable\ frozen TRANSLATION\ MISSING
" menutrans stable\ frozen\ unstable TRANSLATION\ MISSING
" menutrans Set\ &Urgency TRANSLATION\ MISSING
" menutrans &low TRANSLATION\ MISSING
" menutrans &medium TRANSLATION\ MISSING
" menutrans &high TRANSLATION\ MISSING
" menutrans U&nfinalise TRANSLATION\ MISSING
" menutrans &Finalise TRANSLATION\ MISSING
" }}}

" ada menu
" ada menuitems {{{1
" From ada.vim
" menutrans Tag TRANSLATION\ MISSING
" menutrans List TRANSLATION\ MISSING
" menutrans Jump TRANSLATION\ MISSING
" menutrans Create\ File TRANSLATION\ MISSING
" menutrans Create\ Dir TRANSLATION\ MISSING
" menutrans Highlight TRANSLATION\ MISSING
" menutrans Toggle\ Space\ Errors TRANSLATION\ MISSING
" menutrans Toggle\ Lines\ Errors TRANSLATION\ MISSING
" menutrans Toggle\ Rainbow\ Color TRANSLATION\ MISSING
" menutrans Toggle\ Standard\ Types TRANSLATION\ MISSING
" }}}

" gnat menu
" gnat menuitems {{{1
" From gnat.vim
" menutrans GNAT TRANSLATION\ MISSING
" menutrans Build TRANSLATION\ MISSING
" menutrans Pretty\ Print TRANSLATION\ MISSING
menutrans Find Etsi
" menutrans Set\ Projectfile\.\.\. TRANSLATION\ MISSING
" }}}

let &cpo = s:keepcpo
unlet s:keepcpo

" vim: set ts=4 sw=4 noet fdm=marker fdc=4 :
