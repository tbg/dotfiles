execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on
silent !stty -ixon > /dev/null 2>/dev/null

:set  t_Co=256
let g:rehash256 = 1
colorscheme molokai

" ultisnips
let g:UltiSnipsExpandTrigger="<C-s>"
let g:UltiSnipsJumpForwardTrigger="<c-r>"
let g:UltiSnipsJumpBackwardTrigger="<c-e>"

" vim-go
let go_highlight_operators = 1
let go_highlight_space_tab_error = 1
let go_highlight_structs = 1
let go_highlight_trailing_whitespace_error = 1
let go_auto_type_info = 1
let go_def_mapping_enabled = 1
let go_doc_keywordprg_enabled = 1
let go_fmt_autosave = 1
let go_highlight_array_whitespace_error = 1
let go_highlight_chan_whitespace_error = 1
let go_highlight_extra_types = 1
let go_highlight_functions = 1
let go_highlight_methods = 1
let go_fmt_command = 'goimports'


" basics
set modelines=0
filetype plugin indent on
set nocompatible " get out of vi compatible mode
set noexrc " don't use local version of .vimrc
set backspace=indent,eol,start " make backspace a more flexible
set directory=/tmp " directory to place swap files in
set fileformats=unix,dos,mac " support all three, in this order
set hidden " you can change buffers without saving
set mouse=a " use mouse everywhere
set noerrorbells " don't make noise
set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
"             | | | | | | | | |
"             "             | | | | | | | | +-- "]" Insert and Replace
"             "             | | | | | | | +-- "[" Insert and Replace
"             "             | | | | | | +-- "~" Normal
"             "             | | | | | +-- <Right> Normal and Visual
"             "             | | | | +-- <Left> Normal and Visual
"             "             | | | +-- "l" Normal and Visual (not recommended)
"             "             | | +-- "h" Normal and Visual (not recommended)
"             "             | +-- <Space> Normal and Visual
"             "             +-- <BS> Normal and Visual
set wildmenu " turn on command line completion wild style
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,node_modules/**,**/node_modules/**,ark.js,coverage/**
set wildmode=list:longest " turn on wild mode



" keys
inoremap jk <Esc>
let mapleader = ","
" cosmetics
set background=dark

" deal with long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=79
set nojoinspaces


set cursorcolumn " highlight the current column
set cursorline " highlight current line
set laststatus=2 " always show the status line
set linespace=0 " don't insert any extra pixel lines betweens rows
set list " we do what to show tabs, to ensure we get them out of my files
set listchars=tab:▸\  " show tabs and trailing
"highlight SpecialKey ctermfg=8
"highlight NonText ctermfg=8
set matchtime=5 " how many tenths of a second to blink matching brackets for
set nostartofline " leave my cursor where it was
set number " turn on line numbers
set numberwidth=5 " We are good up to 99999 lines
set report=0 " tell us when anything is changed via :...
set ruler " Always show current positions along the bottom
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set sidescrolloff=10 " Keep 5 lines at the size

" searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
"nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %

set relativenumber
set undofile
set ttyfast
set undodir=~/.vim/undo
set showmode
set showcmd

" statusline
set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


" editing
"set completeopt= " don't use a pop up menu for completions
set expandtab " no real tabs please!
set formatoptions=rq " Automatically insert comment leader on return, and let gq format comments
set ignorecase " case insensitive by default
set infercase " case inferred by default
set nowrap " do not wrap line
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set smartcase " if there are caps, go case-sensitive
set autoindent
set smarttab
set shiftwidth=2 " auto-indent amount when using cindent, >>, << and stuff like that
set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set tabstop=4 " real tabs should be 8, and they will show with set list on


" teaching me to do things right
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap <C-q> gt
nnoremap <C-a> gT
nnoremap ; :

" leaderboard
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<cr> " strip whitespace after line
nnoremap <leader>p "+p
nnoremap <leader>y "+

autocmd FileType c,cpp,java,ruby,yaml,haml,php,rb,pp,go autocmd BufWritePre <buffer> :%s/\s\+$//e

set guifont=Inconsolata-dz:h14


nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" plasticboy markdown
" no folding
let g:vim_markdown_folding_disabled=1

set wrap
set nolist
set linebreak

autocmd BufWritePre * ! echo "$(date) %:p" >> ~/log.txt
