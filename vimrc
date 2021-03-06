set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'edsono/vim-matchit'
Bundle 'scrooloose/nerdcommenter'
"<leader>cs -> make comment out of selection in a ncie way

" Gundo for undotree visualization
Bundle 'sjl/gundo.vim.git'
" :GundoToggle

let g:surround_no_insert_mappings=1
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'

" Colorschemes:
Bundle 'croaker/mustang-vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'sjl/badwolf'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'tpope/vim-vividchalk'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'matthewtodd/vim-twilight'
Bundle "daylerees/colour-schemes", { "rtp": "vim-themes/" }

Bundle "pangloss/vim-javascript"
Bundle "briangershon/html5.vim"

Bundle "python.vim--Vasiliev"
Bundle "indentpython.vim"
let python_highlight_all=1  " Enable all plugin's highlighting.
let python_slow_sync=1  " For fast machines.
let python_print_as_function=1  " Color 'print' function.

Bundle "AutoTag"

Bundle "ShowMarks"
" Only show alphabetic marks.
let g:showmarks_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" Marks will be shown in format of 'm[mark char]' e.g. 'mA'.
let g:showmarks_textlower="\.\t"
let g:showmarks_textupper="\.\t"
let g:showmarks_textother="\.\t"

" vim-scripts repos
Bundle 'L9'
Bundle 'AutoComplPop'
Bundle 'vim-json-bundle'
Bundle 'quickfixstatus.vim'

" Customizations
" Powerline
" Bundle 'Lokaltog/vim-powerline'
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_cache_enabled = 1

Bundle 'juvenn/mustache.vim'

" bracket match using tab
map <tab> %



filetype plugin indent on     " required!
"
syntax on
filetype plugin indent on

"activate omnicompletion for everything under the sun
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

set completeopt=menuone,preview

" Omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1


let bash_is_sh=1

set modelines=0

set laststatus=2

set cursorline

" The blinking cursor kind of stresses me out so it is nice to have normal mode as a sort of haven away from insert mode
set gcr=n:blinkon0

" yes, we want unlimited undo.
set undofile

" show a colored column at 85 characters
set colorcolumn=80

set list
set listchars=tab:▸\ ,eol:¬

" highlihgt the file name
hi User1 term=bold,reverse cterm=bold ctermfg=4 ctermbg=2 gui=bold guifg=Blue guibg=#44aa00
" set statusline=%<%1*%f%*\ %h%m%r%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-14.(%l,%c%V%)\ %P

set textwidth=0         " Do not wrap words (insert)
set wrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS
set incsearch           " Incremental search
set autowriteall        " Automatically save before commands like :next and :make
set hlsearch            " Highlight search match
set hidden              " enable multiple modified buffers
set nobackup            " do not write backup files
set history=1000
set wildmenu
set ruler
set visualbell
set title                " change the terminal's title
set noerrorbells         " don't beep

:syntax on

set nobackup
set noswapfile

set ts=4
set sw=4
set expandtab

"fixdel

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

"Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.xpm,*.pyc,*.bak

hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" set backupdir=~/.backup,.
" set directory=~/.backup,~/tmp,.

" enable showmmarks
let g:showmarks_enable = 1
hi! link ShowMarksHLl LineNr
hi! link ShowMarksHLu LineNr
hi! link ShowMarksHLo LineNr
hi! link ShowMarksHLm LineNr


let mapleader = ","

"nmap <leader>t :TagbarToggle<CR>

" highlight trailing whitespace  
set listchars=tab:⟶⋅,trail:·,eol:↵
nmap <silent> <leader>s :set nolist!<CR>

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "toggle")<cr>
vmap <leader>/ :call NERDComment(0, "toggle")<cr>

" ,e to fast finding files. just type beginning of a name and hit TAB
" nmap <leader>e :e **/

" ,b to display current buffers list
" let g:miniBufExplVSplit = 25
" let g:miniBufExplorerMoreThanOne = 100
" let g:miniBufExplUseSingleClick = 1
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplModSelTarget = 1
" nmap <Leader>b :MiniBufExplorer<cr>

if has("mouse")
  set mouse=a
endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set expandtab


" set guifont=Inconsolata:h16
" set guifont=Monaco:h13
" set guifont=Menlo:h18
" set guifont=SourceCodeProVim3-Regular:h15
set guifont=mplus-1mn-light:h13
" set guifont=Monaco:h13

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS



" Movement (end start) like on mac
" Stolen from vimacs
" Navigation
cmap <C-b> <Left>
cmap <C-f> <Right>
cnoremap <M-f> <S-Right>
cnoremap <M-b> <S-Left>
cmap <C-a> <Home>
cmap <C-e> <End>

" Editing
cmap <M-p> <Up>
cmap <M-n> <Down>
cmap <C-d> <Del>
cnoremap <C-y> <C-r><C-o>"
cnoremap <M-w> <C-y>
cnoremap <M-BS> <C-w>
cnoremap <C-k> <C-f>d$<C-c><End>
"Should really use &cedit, not just <C-f> -- but how?


"
" Navigation
"

" Insert/Visual/Operator mode maps
imap <C-b> <Left>
vmap <C-b> <Left>
omap <C-b> <Left>
imap <C-f> <Right>
vmap <C-f> <Right>
omap <C-f> <Right>
imap <C-p> <Up>
vmap <C-p> <Up>
omap <C-p> <Up>
imap <C-n> <Down>
vmap <C-n> <Down>
omap <C-n> <Down>
inoremap <M-f> <C-o>e<Right>
vnoremap <M-f> e<Right>
onoremap <M-f> e<Right>
inoremap <M-b> <C-Left>
vnoremap <M-b> <C-Left>
onoremap <M-b> <C-Left>
imap <C-a> <Home>
vmap <C-a> <Home>
omap <C-a> <Home>
imap <C-e> <End>
vmap <C-e> <End>
omap <C-e> <End>
inoremap <M-Left> <S-Left>
vnoremap <M-Left> <S-Left>
onoremap <M-Left> <S-Left>
inoremap <M-Right> <S-Right>
vnoremap <M-Right> <S-Right>
onoremap <M-Right> <S-Right>



if has("gui_running")
  set guioptions-=T
  set t_Co=256
  colorscheme molokai
  set background=dark
  set nonu
else
  colorscheme badwolf
  set background=dark

  set nonu
endif
set nonu

set encoding=utf8

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" text formating options
au FileType text set wrap
au FileType text set linebreak
au FileType text set nolist  " list disables linebreak
au FileType text set textwidth=0
au FileType text set wrapmargin=0
au FileType text set formatoptions=1

" also for taskpaper
au FileType taskpaper set wrap
au FileType taskpaper set linebreak
au FileType taskpaper set nolist  " list disables linebreak
au FileType taskpaper set textwidth=0
au FileType taskpaper set wrapmargin=0
au FileType taskpaper set formatoptions=1


" also for html
au FileType html set wrap
au FileType html set linebreak
au FileType html set nolist  " list disables linebreak
au FileType html set textwidth=0
au FileType html set wrapmargin=0
au FileType html set formatoptions=1

" This next mapping imitates TextMates Ctrl+Q function to re-hardwrap paragraphs of text:
nnoremap <leader>q gqip

" I have a ,v mapping to reselect the text that was just pasted so I can perform commands (like indentation) on it:
nnoremap <leader>v V`]


set number

" turn off scrolblars..
" hide the right hand vertical scrollbar
set guioptions-=r

" hide the left hand vertical scrollbar
set guioptions-=l
set guioptions-=L

" We always want ctrl+c to act like escape, so we don't need the escape key
" anymore
nnoremap <C-c> <Esc>
vnoremap <C-c> <Esc>gV
onoremap <C-c> <Esc>
inoremap <C-c> <Esc>`^

set shell=/bin/zsh

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set nocursorline
    au InsertLeave * set cursorline
augroup END
" }}}

" Trailing whitespace {{{
" Only shown when not in insert mode so I don't go insane.
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END

" Configuration for HTML.vim
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
" }}}

autocmd BufWinEnter,FileType *.json,*jshintrc setfiletype javascript


" expandtab  = All tabs will be spaces.
" softabstop = How many spaces will a tab take when 'expandtab' is on.
" smarttab   = delete chunks of spaces like tabs.
" tabstop    = How many spaces is a tab (visually).
" shiftwidth = How many spaces will a 'shift' command take.
autocmd BufWinEnter,FileType *,python,javascript set expandtab smarttab tabstop=4 softtabstop=4 shiftwidth=4  " This includes default behaviour.
autocmd BufWinEnter,FileType html,css            set expandtab smarttab tabstop=2 softtabstop=2 shiftwidth=2  " FIXME: Doesn't work.


nmap <leader>e :NERDTreeToggle<CR>

" Change the Sparkup mapping to something that doesn't collide with our emacs
" bindings
let g:sparkupExecuteMapping = '<c-l>'

" use jj for leaving insert mode.
" imap jj <ESC>
nmap <C-g> <ESC>
imap <C-g> <ESC>
vmap <C-g> <ESC>
omap <C-g> <ESC>
cmap <C-g> <ESC>
vmap j

" search in vimgrep for file under cursor
command VGREP :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
command GREP :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') | copen

" Hide tabs
set showtabline=0

" relative number for all buffers
set rnu

" folding
set foldmethod=syntax
set foldcolumn=2
" Make sure folds are being saved and loaded automatically (they're in ~/VimConfiguration/view)
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" useful session options for storing / loading sessions
set sessionoptions-=blank
set sessionoptions-=globals
set sessionoptions-=localoptions
set sessionoptions-=options
set sessionoptions-=resize
set sessionoptions-=winpos
set sessionoptions-=winsize
set sessionoptions-=help

" highlight the current buffer:
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cc=80,+1,+2,+3,+4,+5,+6
    autocmd WinLeave * set colorcolumn=0
augroup END

" When editing non-English text it may be convenient to keep separate keyboard
" layouts for normal and insert mode.  This is supported via the 'imd' option on
" Mac OS X 10.5 or later (on 10.4 the 'imd' option support is not as useful as
" it only switches between Roman and non-Roman input sources and it has been
" known not to work very reliably).
" 
" For example: When 'noimd' is enabled (i.e. IM is enabled) the input source is
" saved when toggling between normal and insert mode, so you can use a US layout
" in normal mode then switch to insert mode and choose a Swedish layout.  When
" you go back to normal mode the US layout will be selected and when you enter
" insert mode the Swedish layout is selected.  This also works when searching
" for text etc. see 'imc', 'imi', 'ims'.
" 
" Note that the layout used in normal mode is the layout used when 'noimd' is
" set (i.e when IM is enabled).  If you find that MacVim switches to the
" wrong layout when going back to normal mode, then select the layout you want
" to use in normal mode and type :set imd followed by :set noimd.
set noimd

" A couple of defaults that should be written on my macvim systems:
" defaults write org.vim.MacVim MMZoomBoth YES
" defaults write org.vim.MacVim MMTextInsetBottom 5
" defaults write org.vim.MacVim MMTextInsetLeft 5
" defaults write org.vim.MacVim MMTextInsetTop 5
