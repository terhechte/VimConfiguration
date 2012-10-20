" Somehow, I fragged the new tab-behaviour. :tabnew results in a new tab with
" the current buffer. But I want a new buffer. this now only works with
" :tabnew new. I searched Google but couldn't find an answer to my weird vim
" behaviour. So I'll just map apple+t to tabnew new now.
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :tabnew new<CR>
endif
