syntax on
set nocompatible
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

"-----------------
" javacomplete
"set omnifunc=javacomplete#Complete
if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
endif

"-----------------
" Tagbar
nmap <silent> <F5> :TagbarToggle<CR>
    let g:tagbar_ctags_bin = 'ctags'
    let g:tagbar_width = 53

"-----------------
" NERDTree
"autocmd VimEnter * NERDTree       "启动Vim时自动打开nerdtree
nmap <silent> <F6> :NERDTree<CR>
let NERDTreeShowBookmarks=1       "一直显示书签
let NERDTreeChDirMode=2           "打开书签时，自动将Vim的pwd设为打开的目录，如果你的项目有tags文件，你会发现这个命令很有帮助
let NERDTreeWinSize=45

if has("gui_running")
    set cursorline
    colorscheme maroloccio2
    set gfn=Inconsolata:h13
    set guioptions-=T
    set fileformat=unix
    set lines=80
    set columns=179
    set mouse=a
endif
