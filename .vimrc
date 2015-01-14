"-----------------
" Plugins
"-----------------
" Pair plug#begin() and plug#end() to use junegunn/vim-plug
call plug#begin('~/.vim/bundle')

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/Development/MyCodes/*']

Plug 'kien/ctrlp.vim'
Plug 'rizzatti/dash.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'Keithbsmiley/swift.vim'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'fatih/vim-go'

" For JS & Web dev
Plug 'jelera/vim-javascript-syntax'
Plug 'digitaltoad/vim-jade'
Plug 'groenewege/vim-less'

" Themes
Plug 'w0ng/vim-hybrid'
Plug 'fatih/molokai'
"Plug 'chriskempson/base16-vim' " I modified it...

" Airline
Plug 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = '|'
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Easymotion
Plug 'Lokaltog/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1 " Turn on case sensitive feature

" Syntastic
Plug 'scrooloose/syntastic'

" Tagbar
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
call plug#end()

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
" Common settings
"-----------------
filetype plugin indent on
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
set nowrap

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
    let g:hybrid_use_Xresources = 1
    colorscheme hybrid
    "colorscheme Tomorrow-Night 
endif


"-----------------
" Highlight jade file.
autocmd BufNewFile,BufRead *.jade set filetype=jade ts =2 shiftwidth=2
" Hightlight less file.
autocmd BufNewFile,BufRead *.less set filetype=less ts=2 shiftwidth=2
" Hightlight swift file.
autocmd BufNewFile,BufRead *.swift set filetype=swift
" Adjust tab width for javascript
autocmd BufNewFile,BufRead *.js set ts=2 shiftwidth=2
" Highlight go file.
autocmd BufNewFile,BufRead *.go set filetype=go ts=4 shiftwidth=4
