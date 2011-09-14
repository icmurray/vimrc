setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent

setlocal omnifunc=pythoncomplete#Complete

" Highlight parts of lines >79 in length
if exists('+colorcolumn')
  set colorcolumn=79
else
  ":highlight OverColLimit ctermbg=darkred ctermfg=white guibg=#FFD9D9 
  autocmd BufWinEnter *.py call ToggleOverColHighlight()
  "au BufWinEnter *.py let w:m1=matchadd('OverColLimit', '\%>79v.\+', -1)
endif
