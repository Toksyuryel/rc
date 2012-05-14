" Global
filetype plugin indent on       " turn on all the filetype shit
syntax on                       " turn on syntax highlighting
set nocompatible                " because fuck vi
if &term =~ "^screen"           " some magic to fix the window title in screen
  set titlestring=vim\ %{expand(\"t\")}
  set t_ts=k
  set t_fs=\
endif                           " thanks Eevee!
set title                       " set the window title
set backspace=indent,eol,start  " backspace over anything
set nobackup                    " don't make backups
set writebackup                 " unless we're saving a file
set history=50                  " retain 50 lines of :command history
set ruler                       " always display the cursor position
set showcmd                     " show commands as we type
set number                      " show line numbers
set cursorline                  " highlight the line we're working on so we don't lose track of it
set hlsearch                    " highlight the search term so it's easier to find
set incsearch                   " search as we type
set ignorecase                  " case-insensitive searching
set smartcase                   " unless we explicitly use upper-case
set autoindent                  " preserve indentation level for newlines
set shiftwidth=4                " indent 4 spaces per level
set softtabstop=4               " indent 4 spaces per tab
set expandtab                   " don't use literal tab characters
set fileformats=unix,dos        " prefer unix line endings, but begrudgingly permit dos line endings
set encoding=utf-8              " use unicode
setglobal fileencoding=utf-8    " I mean it, use unicode
set nobomb                      " don't use the BOM though, it's stupid and breaks things
set fileencodings=ucs-bom,utf-8,iso-8859-1 " detect when files are unicode
set wildmenu                    " zsh is awesome
set wildmode=full               " like seriously
set wildignore+=*.sw,__pycache__,*.pyc " ignore files we don't really care about
set scrolloff=4                 " start scrolling early to avoid surprises and limit overscrolling
set hidden                      " permit hidden buffers to contain unsaved changes
let g:SuperTabDefaultCompletionType = "context" " figure out what completion type to use from context
set completeopt=menuone,longest,preview " make the completion really pretty and show docstrings
set background=dark t_Co=256    " make sure vim knows my background is dark and my terminal can do 256 colors
colorscheme molokai             " prettify all the colors

" Disable SuperTab in text files where it only gets in the way
au FileType text,none let b:SuperTabDisabled=1
au FileType text,none setlocal noautoindent textwidth=80

" reST
au FileType rst setlocal textwidth=80

" Python
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType python setlocal textwidth=80 foldmethod=indent
au BufNewFile *.py,*.pyw set fileformat=unix
hi BadWhitespace ctermbg=red guibg=red
au FileType python match BadWhitespace /^\t\+/
au FileType python match BadWhitespace /\s\+$/
au FileType python let python_highlight_all=1
au FileType python let python_slow_sync = 1

" HTML
au FileType html,mako setlocal foldmethod=syntax
au FileType html,mako setlocal shiftwidth=2 softtabstop=2
au BufNewFile *.html 0read ~/.vim/skel/html

" CSS
au FileType css setlocal foldmethod=syntax
au FileType css setlocal shiftwidth=1 softtabstop=1
au BufNewFile *.css 0read ~/.vim/skel/css

" Magic global settings that have to go after everything else
" (shamelessly stolen from Eevee's .vimrc, like most of these settings)
hi WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+\%#\@<!$/