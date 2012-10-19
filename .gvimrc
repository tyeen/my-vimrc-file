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
" objc file type
let filetype_m='objc'

"-----------------
" java highlight
let java_highlight_all=1

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

"-----------------
" Hide scrollbar
set go-=r
set go-=L

"-----------------
" show command when input
set showcmd

"-----------------
" status line
" %t    for filename
" %(%)  make a group
" %m    show [+] if curerent buffer(file) is modified, and show [-] when current file is NOT modifiable
" %h    show [help] when open a help file
" %r    show [RO] when current file is Read-Only
" %w    show [Preview]
" %q    show [Quick fix]
" %=    seperate left justified and right justified
" %l    current line
" %c    current column
" %L    total lines
" %p    percentage of current position
" %%    show the % symbol
set statusline+=%f%(%m%h%r%w%q%)%=\ %Llines

"-----------------
" Key binding
nmap <S-k> <C-g>
:inoremap <F1> <NOP>
nmap <F1> <NOP>

if has("gui_running")
    set cursorline
    colorscheme Monokai
"    set gfn=Inconsolata:h13
    set gfn=Menlo:h11
    set guioptions-=T
    set fileformat=unix
    set lines=80
    set columns=179
    set mouse=a
endif
