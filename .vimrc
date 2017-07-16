" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
 
 
"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
 
 
"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Search incrementally as you type
set incsearch

" When creating a new line inside open brackets, match the indent of the
" brackets.
set cino+=(0
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display relative line numbers on the left
set relativenumber
set number
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
" Highlight the current line
set cursorline

" Keep 3 lines below/above cursor visible
set scrolloff=3
 
"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4
 
 
"------------------------------------------------------------
" Visual

"show matching brackets
set showmatch
set mat=2

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Move panes with just ctrl + direction (instead of control+w + direction) 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map W and Q to w and q so no more accidental failure to save/quit
command! W w
command! Q q
command! WQ wq
command! Wq wq

"moving around
map j gj
map k gk

" entering/exiting normal/insert/command modes
nmap ; :
imap jk <Esc>

"------------------------------------------------------------
"

" Eddie Colorscheme for 256 and GUI
" Author: Matt Sacks
" 
" This is my adaptation of the pastelmod eclipse theme from my co-worker Eddie
" who spent too much time developing these specific colors.
" Hex color conversion functions borrowed from the themes 'Desert256' and
" Chris Kempson's Tomorrow

" Default GUI Colours
let s:foreground   = "E0E2E4"
let s:background   = "1F2223"
let s:tabselection = "516775"
let s:selection    = "2E3F49"
let s:line         = "81969A"
let s:status_line  = "202527"
let s:cursorline   = "2F393C"
let s:statusline   = "4A5A5F"
let s:comment      = "7D8C93"
let s:red          = "D77481"
let s:diff_red     = "542D32"
let s:orange       = "CA9C81"
let s:diff_orange  = "574133"
let s:task_tag     = "A57B61"
let s:yellow       = "E8E2B7"
let s:green        = "93C79F"
let s:diff_green   = "3E5443"
let s:aqua         = "8BA4BA"
let s:blue         = "678CB1"
let s:dark_blue    = "4E778E"
let s:diff_blue    = "2E4754"
let s:purple       = "A082BD"
let s:window       = "616161"

set background=dark
hi clear
syntax reset

let g:colors_name = "eddie"

if has("gui_running") || &t_Co == 88 || &t_Co == 256
  " Color Calculations {{{
  " Returns an approximate grey index for the given grey level
  fun <SID>grey_number(x)
    if &t_Co == 88
      if a:x < 23
        return 0
      elseif a:x < 69
        return 1
      elseif a:x < 103
        return 2
      elseif a:x < 127
        return 3
      elseif a:x < 150
        return 4
      elseif a:x < 173
        return 5
      elseif a:x < 196
        return 6
      elseif a:x < 219
        return 7
      elseif a:x < 243
        return 8
      else
        return 9
      endif
    else
      if a:x < 14
        return 0
      else
        let l:n = (a:x - 8) / 10
        let l:m = (a:x - 8) % 10
        if l:m < 5
          return l:n
        else
          return l:n + 1
        endif
      endif
    endif
  endfun

  " Returns the actual grey level represented by the grey index
  fun <SID>grey_level(n)
    if &t_Co == 88
      if a:n == 0
        return 0
      elseif a:n == 1
        return 46
      elseif a:n == 2
        return 92
      elseif a:n == 3
        return 115
      elseif a:n == 4
        return 139
      elseif a:n == 5
        return 162
      elseif a:n == 6
        return 185
      elseif a:n == 7
        return 208
      elseif a:n == 8
        return 231
      else
        return 255
      endif
    else
      if a:n == 0
        return 0
      else
        return 8 + (a:n * 10)
      endif
    endif
  endfun

  " Returns the palette index for the given grey index
  fun <SID>grey_colour(n)
    if &t_Co == 88
      if a:n == 0
        return 16
      elseif a:n == 9
        return 79
      else
        return 79 + a:n
      endif
    else
      if a:n == 0
        return 16
      elseif a:n == 25
        return 231
      else
        return 231 + a:n
      endif
    endif
  endfun

  " Returns an approximate colour index for the given colour level
  fun <SID>rgb_number(x)
    if &t_Co == 88
      if a:x < 69
        return 0
      elseif a:x < 172
        return 1
      elseif a:x < 230
        return 2
      else
        return 3
      endif
    else
      if a:x < 75
        return 0
      else
        let l:n = (a:x - 55) / 40
        let l:m = (a:x - 55) % 40
        if l:m < 20
          return l:n
        else
          return l:n + 1
        endif
      endif
    endif
  endfun

  " Returns the actual colour level for the given colour index
  fun <SID>rgb_level(n)
    if &t_Co == 88
      if a:n == 0
        return 0
      elseif a:n == 1
        return 139
      elseif a:n == 2
        return 205
      else
        return 255
      endif
    else
      if a:n == 0
        return 0
      else
        return 55 + (a:n * 40)
      endif
    endif
  endfun

  " Returns the palette index for the given R/G/B colour indices
  fun <SID>rgb_colour(x, y, z)
    if &t_Co == 88
      return 16 + (a:x * 16) + (a:y * 4) + a:z
    else
      return 16 + (a:x * 36) + (a:y * 6) + a:z
    endif
  endfun

  " Returns the palette index to approximate the given R/G/B colour levels
  fun <SID>colour(r, g, b)
    " Get the closest grey
    let l:gx = <SID>grey_number(a:r)
    let l:gy = <SID>grey_number(a:g)
    let l:gz = <SID>grey_number(a:b)

    " Get the closest colour
    let l:x = <SID>rgb_number(a:r)
    let l:y = <SID>rgb_number(a:g)
    let l:z = <SID>rgb_number(a:b)

    if l:gx == l:gy && l:gy == l:gz
      " There are two possibilities
      let l:dgr = <SID>grey_level(l:gx) - a:r
      let l:dgg = <SID>grey_level(l:gy) - a:g
      let l:dgb = <SID>grey_level(l:gz) - a:b
      let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
      let l:dr = <SID>rgb_level(l:gx) - a:r
      let l:dg = <SID>rgb_level(l:gy) - a:g
      let l:db = <SID>rgb_level(l:gz) - a:b
      let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
      if l:dgrey < l:drgb
        " Use the grey
        return <SID>grey_colour(l:gx)
      else
        " Use the colour
        return <SID>rgb_colour(l:x, l:y, l:z)
      endif
    else
      " Only one possibility
      return <SID>rgb_colour(l:x, l:y, l:z)
    endif
  endfun

  " Returns the palette index to approximate the 'rrggbb' hex string
  fun <SID>rgb(rgb)
    let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
    let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
    let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

    return <SID>colour(l:r, l:g, l:b)
  endfun

  " END Color Calculations }}}

  " Sets the highlighting for the given group
  fun <SID>X(group, fg, bg, attr)
    if a:fg != ""
      " there's no green in 256 that looks like s:green
      if !has("gui_running") && a:fg == s:green
        exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=010"
      else
        exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
      endif
    endif
    if a:bg != ""
      exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
    endif
    if a:attr != ""
      exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    endif
  endfun

  " Vim Highlighting
  call <SID>X("Normal", s:foreground, s:background, "")
  call <SID>X("LineNr", s:line, "", "")
  call <SID>X("NonText", s:selection, "", "")
  call <SID>X("SpecialKey", s:selection, "", "")
  call <SID>X("Search", "", s:yellow, "")
  call <SID>X("TabLine", s:foreground, s:background, "underline")
  call <SID>X("TabLineSel", s:foreground, s:tabselection, "none")
  call <SID>X("TabLineFill", s:foreground, s:background, "underline")
  call <SID>X("StatusLine", s:statusline, s:foreground, "reverse")
  call <SID>X("StatusLineNC", s:cursorline, s:comment, "")
  call <SID>X("VertSplit", s:window, s:window, "none")
  call <SID>X("Visual", "", s:selection, "none")
  call <SID>X("Directory", s:blue, "", "")
  call <SID>X("ModeMsg", s:green, "", "")
  call <SID>X("MoreMsg", s:green, "", "")
  call <SID>X("Question", s:green, "", "")
  call <SID>X("WarningMsg", s:red, "", "")
  call <SID>X("MatchParen", "", s:selection, "")
  call <SID>X("Folded", s:comment, s:background, "")
  call <SID>X("FoldColumn", "", s:background, "")
  if version >= 700
    call <SID>X("CursorLine", "", s:cursorline, "none")
    call <SID>X("Cursor", "", s:line, "none")
    call <SID>X("CursorColumn", "", s:line, "none")
    call <SID>X("PMenu", s:foreground, s:selection, "none")
    call <SID>X("PMenuSel", s:foreground, s:selection, "reverse")
  end
  if version >= 703
    call <SID>X("ColorColumn", "", s:line, "none")
  end

  " Standard Highlighting
  call <SID>X("Comment", s:comment, "", "")
  call <SID>X("Todo", s:comment, s:background, "")
  call <SID>X("Title", s:comment, "", "")
  call <SID>X("Identifier", s:red, "", "none")
  call <SID>X("Statement", s:foreground, "", "")
  call <SID>X("Conditional", s:foreground, "", "")
  call <SID>X("Repeat", s:foreground, "", "")
  call <SID>X("Structure", s:purple, "", "")
  call <SID>X("Function", s:blue, "", "")
  call <SID>X("Constant", s:orange, "", "")
  call <SID>X("String", s:green, "", "")
  call <SID>X("Special", s:foreground, "", "")
  call <SID>X("PreProc", s:purple, "", "")
  call <SID>X("Operator", s:aqua, "", "none")
  call <SID>X("Type", s:blue, "", "none")
  call <SID>X("Define", s:purple, "", "none")
  call <SID>X("Include", s:blue, "", "")
  "call <SID>X("Ignore", "666666", "", "")

  " Vim Highlighting
  call <SID>X("vimCommand", s:red, "", "none")

  " C Highlighting
  call <SID>X("cType", s:yellow, "", "")
  call <SID>X("cStorageClass", s:purple, "", "")
  call <SID>X("cConditional", s:purple, "", "")
  call <SID>X("cRepeat", s:purple, "", "")

  " PHP Highlighting
  call <SID>X("phpVarSelector", s:red, "", "")
  call <SID>X("phpKeyword", s:purple, "", "")
  call <SID>X("phpRepeat", s:purple, "", "")
  call <SID>X("phpConditional", s:purple, "", "")
  call <SID>X("phpStatement", s:purple, "", "")
  call <SID>X("phpMemberSelector", s:foreground, "", "")

  " Ruby Highlighting
  call <SID>X("rubySymbol", s:task_tag, "", "")
  call <SID>X("rubyConstant", s:yellow, "", "")
  call <SID>X("rubyAttribute", s:blue, "", "")
  call <SID>X("rubyInclude", s:blue, "", "")
  call <SID>X("rubyStringDelimiter", s:green, "", "")
  call <SID>X("rubyInterpolationDelimiter", s:orange, "", "")
  call <SID>X("rubyConditional", s:purple, "", "")
  call <SID>X("rubyRepeat", s:purple, "", "")
  call <SID>X("rubyClass", s:aqua, "", "")
  call <SID>X("rubyControl", s:dark_blue, "", "")

  " Python Highlighting
  call <SID>X("pythonInclude", s:purple, "", "")
  call <SID>X("pythonStatement", s:purple, "", "")
  call <SID>X("pythonConditional", s:purple, "", "")
  call <SID>X("pythonFunction", s:blue, "", "")

  " HTML Highlighting
  call <SID>X("htmlTag", s:aqua, "", "")
  call <SID>X("htmlTagName", s:aqua, "", "")
  call <SID>X("htmlSpecialTagName", s:orange, "", "")
  call <SID>X("htmlEndTag", s:aqua, "", "")
  call <SID>X("htmlTitle", "", "", "none")

  " CSS Highlighting
  call <SID>X("cssIdentifier", s:red, "", "")
  call <SID>X("cssClassName", s:aqua, "", "")
  call <SID>X("cssTagName", s:yellow, "", "")
  call <SID>X("cssPseudoClass", s:purple, "", "")

  " JavaScript Highlighting
  call <SID>X("javaScriptFunction", s:purple, "", "")
  call <SID>X("javaScriptConditional", s:yellow, "", "")
  call <SID>X("javaScriptRepeat", s:purple, "", "")
  call <SID>X("javaScriptNumber", s:orange, "", "")
  call <SID>X("javaScriptMember", s:orange, "", "")
  call <SID>X("javaScriptParens", s:aqua, "", "")
  call <SID>X("javaScriptBrackets", s:aqua, "", "")
  call <SID>X("javaScriptBlocks", s:task_tag, "", "")
  call <SID>X("javaScriptLabel", s:red, "", "none")

  " HAML Highlighting
  call <SID>X("hamlTag", s:orange, "", "")
  call <SID>X("hamlAttributesDelimiter", s:aqua, "", "")

  " SASS Highlighting
  call <SID>X("sassClass", s:aqua, "", "")

  " CoffeeScript Highlighting
  call <SID>X("coffeeStatement", s:orange, "", "none")
  call <SID>X("coffeeConditional", s:yellow, "", "")
  call <SID>X("coffeeBracket", s:aqua, "", "none")
  call <SID>X("coffeeParen", s:aqua, "", "none")
  call <SID>X("coffeeRepeat", s:purple, "", "none")
  call <SID>X("coffeeKeyword", s:yellow, "", "none")
  call <SID>X("coffeeSpecialVar", s:blue, "", "none")

  " ZSH Highlighting
  call <SID>X("zshCommands", s:red, "", "none")
  call <SID>X("zshKeyword", s:blue, "", "none")

  " Diff Highlighting
  call <SID>X("DiffAdd", "", s:diff_green, "")
  call <SID>X("diffAdded", s:green, "", "")
  call <SID>X("DiffDelete", s:diff_blue, s:diff_red, "")
  call <SID>X("diffRemoved", s:red, "", "")
  call <SID>X("DiffChange", "", s:diff_orange, "")
  call <SID>X("DiffText", "", s:diff_blue, "none")

  " Fugitive Highlighting
  call <SID>X("gitcommitUntrackedFile", s:red, "", "")
  call <SID>X("gitcommitSelectedFile", s:green, "", "")

  " Delete Functions
  delf <SID>X
  delf <SID>rgb
  delf <SID>colour
  delf <SID>rgb_colour
  delf <SID>rgb_level
  delf <SID>rgb_number
  delf <SID>grey_colour
  delf <SID>grey_level
  delf <SID>grey_number

  " 256-color cterm fixes for theme colors
  if !has("gui_running") && &t_Co == 256
    hi Normal ctermbg=234
    hi DiffChange ctermbg=094
    hi CursorLine ctermbg=235
    hi StatusLine ctermfg=239
    hi StatusLineNC ctermfg=234
    hi TabLineSel ctermbg=239
    hi Visual ctermbg=236
  endif
endif

