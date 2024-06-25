setlocal expandtab                           " use spaces
setlocal tabstop=4                           " tabstops of 4
setlocal shiftwidth=4                        " indents of 4
setlocal textwidth=119                       " Wrap lines at 119
setlocal autoindent smartindent              " turn on auto/smart indenting
setlocal smarttab                            " make <tab> and <backspace> smarter
setlocal backspace=eol,start,indent          " allow backspacing over indent, eol, & star

"Bracket matching
setlocal showmatch
setlocal matchtime=2

" Highlighting
syntax enable " Syntax highlighting
syn keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t bool int64_t int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t
syn keyword cOperator likely unlikely

hi ErrorTailSpace term=standout ctermfg=4 ctermbg=7
hi ErrorLeadSpace term=standout ctermfg=4 ctermbg=7

syn match ErrorTailSpace /\s\+$/ containedin=ALL " highlight any trailing spaces


setlocal formatoptions=tcqlron  " Handle comments in code nicely
setlocal cinoptions=:0,l1,t0,g0 " Kernel guidlines for indentation

setlocal fdm=manual        " Manual folding (for performance)
setlocal foldlevel=99      " Don't fold by default

" Set colorcolumn to 80 lines and something less garish
" setlocal cc=80
:hi ColorColumn term=reverse ctermbg=7 guibg=Grey90

"macros to enable/disable expandtab
nmap <F7> :setlocal ts=4 sts=4 sw=4 expandtab<CR>
nmap <F8> :setlocal ts=8 sts=8 sw=8 noexpandtab<CR>

"Macros to show/hide tabs
nmap <F9> :setlocal list<CR>
nmap <F10> :setlocal nolist<CR>

"Nexus stuff
syn keyword cType NEXUS_Error

