"""""""""""""""""""""""""""""""""""
"""""""""""" REMAPS """""""""""""""
"""""""""""""""""""""""""""""""""""
" Change leader instead of backslash. That means all \x commands turn into ,x
let mapleader=","

" Use ,, to switch between buffers
nnoremap <leader><leader> :b#<CR>

noremap h ç
noremap j h
noremap k j
noremap l k
noremap ç l

" Exit from terminal buffer (Neovim) more easily (remaps Esc key in
" terminal)
tnoremap <C-[> <C-\><C-n>

" Open terminal buffer (M stands for the Alt key)
nnoremap <M-t> :te<CR>

" Switch to terminal buffer automatically (when only one terminal is
" open)
nnoremap <M-0> :b term://<CR>

" Move between windows exactly the same way as usual
tnoremap <C-j><C-k> <C-\><C-N>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>
"map <leader>y "*y<cr>

" Nerd tree
map <C-n> :NERDTreeToggle<CR>
"let NERDTreeShowHidden=1    "Show hidden files
"

"nnoremap <leader><cr> :TREPLSendLine<cr>j " send current line and move down
"vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection
"nnoremap <A-t> :Ttoggle<CR>
