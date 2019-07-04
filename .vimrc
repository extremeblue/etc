set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'

" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" enhance nerdtree's tabs
Plugin 'jistr/vim-nerdtree-tabs'

" https://github.com/airblade/scrooloose/syntastic
Plugin 'scrooloose/syntastic'

" https://github.com/airblade/vim-gitgutter
Plugin 'airblade/vim-gitgutter'

" https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" https://github.com/ctrlpvim/ctrlp.vim
Plugin 'ctrlpvim/ctrlp.vim'

" https://github.com/nanotech/jellybeans.vim
Plugin 'nanotech/jellybeans.vim'

" https://github.com/kchmck/vim-coffee-script
Plugin 'kchmck/vim-coffee-script'

" https://github.com/lokikl/vim-ctrlp-ag
Plugin 'lokikl/vim-ctrlp-ag'

" https://github.com/majutsushi/tagbar
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map <c-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

nnoremap <c-k> :CtrlPag<cr>
vnoremap <c-k> :CtrlPagVisual<cr>
nnoremap <leader>ca :CtrlPagLocate 
nnoremap <leader>cp :CtrlPagPrevious<cr>
let g:ctrlp_ag_ignores = '--ignore .git
    \ --ignore "deps/*"
    \ --ignore "_build/*"
    \ --ignore "node_modules/*"'
" By default ag will search from PWD
" But you may enable one of below line to use an arbitrary directory or,
" Using the magic word 'current-file-dir' to use current file base directory
" let g:ctrlp_ag_search_base = 'current-file-dir'
" let g:ctrlp_ag_search_base = 'app/controllers' " both relative and absolute path supported

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#tabline#enabled = 1
nnoremap <s-tab> :bp<CR>
nnoremap <tab> :bn<CR>
nnoremap <c-x> :bp<cr>:bd #<cr>

set hlsearch " 검색어 하이라이팅
set cursorcolumn " 세로 커서 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
set paste " 붙여넣기 계단현상 없애기

set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ " 마지막으로 수정된 곳에 커서를 위치함 au BufReadPost * \ if line("'\"") > 0 && line("'\"") <= line("$") |
                        \ exe "norm g`\"" |
                        \ endif

" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
  set fileencoding=korea
endif

" 구문 강조 사용
if has("syntax")
  syntax on
endif

" 컬러 스킴 사용
colorscheme jellybeans

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

