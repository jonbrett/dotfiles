setlocal expandtab                         " use spaces
setlocal tabstop=4                         " tabstops of 8
setlocal sts=4                             " soft tabstops of 8
setlocal shiftwidth=4                      " indents of 8
setlocal textwidth=0
setlocal autoindent smartindent            " turn on auto/smart indenting
setlocal smarttab                          " make <tab> and <backspace> smarter
setlocal backspace=eol,start,indent        " allow backspacing over indent, eol, & star

" Highlighting
syntax enable " Syntax highlighting

if has("gui_running")
        hi Error80        gui=NONE   guifg=#ffffff   guibg=#6e2e2e
        hi ErrorTailSpace gui=NONE   guifg=#ffffff   guibg=#6e2e2e
else
        hi Error80 term=standout ctermfg=4 ctermbg=7
        hi ErrorTailSpace term=standout ctermfg=4 ctermbg=7
endif
syn match ErrorTailSpace / \+$/         " highlight any trailing spaces
