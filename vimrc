filetype plugin on
set guifont=Nimbus\ Mono\ L\ 10
set wildmode=longest:full
set wildmenu

set dictionary+=/usr/share/dict/words

" F2 toggles line numbers
map <F2> :set number!<CR>

" Setup the the OverColLimit highlight group colours, but don't enable it yet
highlight OverColLimit ctermbg=darkred ctermfg=white guibg=#FFD9D9

function! ToggleOverColHighlight(...)

  " Use the specified width, if given.
  if a:0 > 0
    let width = a:1
  else
    let width = 79
  end

  let w:overcol_match_id = exists('w:overcol_match_id') ? w:overcol_match_id : 0
  if w:overcol_match_id == 0
    :let w:overcol_match_id=matchadd('OverColLimit', '\%>79v.\+', -1)
  else
    :call matchdelete(w:overcol_match_id)
    :let w:overcol_match_id = 0
  end
endfunction
    
map <F3> :call ToggleOverColHighlight()<CR>

""" NERDTree Toggling """
map NT :NERDTreeToggle<CR>

""""""""""""""""""""" Taglist configuration """""""""""""""""""
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
