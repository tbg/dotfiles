" Download and use vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/plug/vim-plug/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  silent !mkdir -p ~/.config/nvim/autoload && cd ~/.config/nvim/autoload && ln -s ../plug/vim-plug/plug.vim .
  autocmd VimEnter * PlugInstall
endif

" ---------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" General programming
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }

" Git
Plug 'tpope/vim-fugitive'

" Go
Plug 'fatih/vim-go'

" Appearance
Plug 'Lokaltog/vim-distinguished'
Plug 'bling/vim-airline'

" Markdown
Plug 'plasticboy/vim-markdown'

" Terraform
" Plug 'hashivim/vim-terraform'

" Mathy stuff
" Plug 'jvirtanen/vim-octave'
" Plug 'vim-scripts/gnuplot.vim'

" Front-end
" Plug 'leafgarland/typescript-vim'
" Plug 'wavded/vim-stylus'

" General productivity
Plug 'rking/ag.vim'

" completion
" function! DoRemote(arg)
"   UpdateRemotePlugins
" endfunction
" Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
" Plug 'zchee/deoplete-go', { 'do': 'make' }

call plug#end()
" ---------------------------------------------------------------------------

" Set up appearance
" xterm256-colors palette: https://jonasjacek.github.io/colors/
colorscheme distinguished
highlight ColorColumn ctermbg=233

" vim-go
let go_highlight_operators = 1
let go_highlight_space_tab_error = 1
let go_highlight_structs = 1
let go_highlight_trailing_whitespace_error = 1
" let go_auto_type_info = 1
let go_def_mapping_enabled = 1
let go_doc_keywordprg_enabled = 1
let go_fmt_autosave = 1
let go_highlight_array_whitespace_error = 1
let go_highlight_chan_whitespace_error = 1
let go_highlight_extra_types = 1
let go_highlight_functions = 1
let go_highlight_methods = 1
let go_fmt_command = 'goimports'

" ctrl-p
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" keys
nnoremap ; :
inoremap jk <Esc>
let mapleader = ","

" editing
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

" deal with long lines
set nowrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=79
set nojoinspaces

set nostartofline " leave my cursor where it was
set number " turn on line numbers
set numberwidth=5 " We are good up to 99999 lines
set report=0 " tell us when anything is changed via :...
set ruler " Always show current positions along the bottom
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set sidescrolloff=10 " Keep 5 lines at the size

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set relativenumber
set undofile
set undodir=~/.undo
set showmode
set showcmd

" leaderboard
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<cr> " strip whitespace after line
nnoremap <leader>p "+p
nnoremap <leader>y "+

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k


set wrap
set nolist
set linebreak

autocmd BufWritePre * :silent ! echo "$(date) %:p" >> ~/log.txt
