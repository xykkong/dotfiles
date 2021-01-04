"""""""""""""""""""""""""""""""""""
"""""""""""" REMAPS """""""""""""""
"""""""""""""""""""""""""""""""""""
" Change leader instead of backslash. That means all \x commands turn into 'x
let mapleader=","

" Use ,, to switch between buffers
"nnoremap <leader><leader> :b#<CR>

" Hardcore mode, disable arrow keys.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Copy to clipboard
nnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>yy  "+yy
vnoremap  <leader>y  "+y

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Quit normal mode
nnoremap <Leader>q  :q<CR>
nnoremap <Leader>Q  :qa!<CR>

"Remap the ESC Key
inoremap jk <ESC>

" Insert mode shortcut
inoremap <C-h> <BS>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
"Bash like
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>

"Command mode shortcut
cnoremap <C-h> <BS>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
"Bash like
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Delete>


" Open shell in vim
if has('nvim') || has('terminal')
  map <Leader>' :terminal<CR>
else
  map <Leader>' :shell<CR>
endif

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Treat long lines as break lines (useful when moving around in them)
"nmap j gj
"nmap k gk
"vmap j gj
"vmap k gk

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Redo
nnoremap U <C-r>

" Quick command mode
"nnoremap <CR> :

" Exit from terminal buffer (Neovim) more easily (remaps Esc key in
" terminal)
"tnoremap <C-[> <C-\><C-n>

" Open terminal buffer (M stands for the Alt key)
"nnoremap <M-t> :te<CR>

" Switch to terminal buffer automatically (when only one terminal is
" open)
"nnoremap <M-0> :b term://<CR>

" Move between windows exactly the same way as usual
"tnoremap <C-j><C-k> <C-\><C-N>
"tnoremap <C-h> <C-\><C-N><C-w>h
"tnoremap <C-j> <C-\><C-N><C-w>j
"tnoremap <C-k> <C-\><C-N><C-w>k
"tnoremap <C-l> <C-\><C-N><C-w>l


" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null


