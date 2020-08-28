call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rking/ag.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ap/vim-css-color'
Plug 'scrooloose/nerdcommenter'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'hail2u/vim-css3-syntax'
Plug 'yggdroot/indentline'
Plug 'jparise/vim-graphql'
Plug 'digitaltoad/vim-jade'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'hynek/vim-python-pep8-indent'
Plug 'jparise/vim-graphql'
"Plug 'valloric/youcompleteme'

" Initialize plugin system
call plug#end()

syntax on 

set number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set hlsearch
set incsearch
set history=100
set encoding=UTF-8

set nocompatible
set path+=**
set wildmenu

" Fix colorcheme in tmux
set t_Co=256
set background=dark

" MAPPINGS: 
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

" Syntax settings
let g:typescript_ignore_browserwords = 1

" Ctrlp settings
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" NERDcommenter settings
let g:NERDCompactSexyComs = 1

" NERDtree settings
let NERDTreeShowHidden = 1

" Linting settings
let g:ale_linters = {'javascript': ['eslint'],}
let g:airline#extensions#ale#enabled = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
