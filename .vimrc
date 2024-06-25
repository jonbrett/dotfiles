" Jon's vim config
"
" Global options
set nocompatible " Use vim defaults, instaed of vi
filetype on      " Enable auto filetype detection
set ffs=unix,dos " Default to unix line endings, but also cope with DOS
set nobackup     " No backup files
set nowritebackup "No backup while editing
set noswapfile   " No swap file
set backspace=indent,eol,start

" Include cscope maps
" NB - we set nocscopeverbose to avoid error when VIM has already added the
" cscope database
if has("win32")
    "TODO: Windows cscope fix
    set csprg=c:\Tools\cscope.exe
else
    set nocscopeverbose
    source ~/.vim/cscope_maps.vim
endif

" Incremental, highlighting search
set hlsearch
set incsearch

" Enable syntax highlighting
syntax on

" Enable ruler
set ruler

" Toggle paste mode with <F11> key
set pastetoggle=<f11>

" Configure bracket matching
set showmatch
set matchtime=2

" Highlight trailing whitespace
hi ErrorTailSpace term=standout ctermfg=4 ctermbg=7
match ErrorTailSpace /\s\+$/ "highlight any trailing spaces

" Default style (no tabs, indent 4 spaces)
set expandtab ts=4 sts=4 sw=4

"
" Load filetype-specific rules
"
if has('autocmd')
        filetype plugin indent on

        "Filetype-specific rules
        autocmd FileType c,cpp,dtsi,dts source ~/.vim/c.vim
        autocmd FileType python,perl source ~/.vim/py.vim
        autocmd Filetype sh source ~/.vim/shell.vim
        autocmd Filetype make source ~/.vim/mak.vim
endif

" *.inc files are normally Makefiles in my world :)
let g:filetype_inc="make"

" Mouse support
if has("win32")
    set mouse=a
endif

if has("gui_running")
  if has("gui_win32")
    set guifont="Ubuntu Mono:h11:cANSI"
  endif
endif

" Reformat json using =j
nmap =j :%!python -m json.tool<CR>
