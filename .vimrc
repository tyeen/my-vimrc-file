""" settings for Vundle --start
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
""" settings for Vundle --end


"-----------------
" Bundles
"-----------------
"
" YouCompleteMe
Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/Development/MyCodes/*']

Bundle 'kien/ctrlp.vim'
Bundle 'chriskempson/base16-vim'
Bundle 'rizzatti/dash.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'digitaltoad/vim-jade'

" Airline
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#right_sep = '|'
let g:airline#extensions#tabline#right_alt_sep = '<'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Easymotion
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1 " Turn on case sensitive feature

" Syntastic
Plugin 'scrooloose/syntastic'


"-----------------
" NERDTree
"-----------------
"autocmd VimEnter * NERDTree       "启动Vim时自动打开nerdtree
nmap <silent> <F6> :NERDTree<CR>
let NERDTreeShowBookmarks=1       "一直显示书签
let NERDTreeChDirMode=2           "打开书签时，自动将Vim的pwd设为打开的目录，如果你的项目有tags文件，你会发现这个命令很有帮助
let NERDTreeWinSize=45

"-----------------
" Key map
"-----------------
nnoremap <F3> : set hlsearch!<CR>
nnoremap <c-m> %


"-----------------
" Highlight jade file.
autocmd BufNewFile,BufRead *.jade set filetype=jade


"-----------------
" Common settings
"-----------------

filetype on
syntax on
set number
set autoindent
set smartindent
set showmatch
set hls
set incsearch
set shiftwidth=4
set ts=4
set expandtab
set ruler
set mousehide
set mouse=v
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set visualbell
set ttyfast
set autochdir
"set showtabline=0

if has("gui_running")
    set cursorline
    set background=dark
    colorscheme base16-ocean_objc
    set gfn=Source_Code_Pro:h12
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set guioptions-=e
    set fileformat=unix
    set lines=80
    set columns=179
    set mouse=a
else
    colorscheme base16-ocean_objc
endif
