" ####################################################
" =============== Plugin Configuration ===============
" ####################################################


" #############################################
" Sonokai
" #############################################
"Available values: `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`
let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1


" #############################################
" Lightline
" #############################################
let g:lightline = {
      \ 'colorscheme': 'sonokai',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }


" #############################################
" Ale
" #############################################
" Set this variable to 1 to fix files when you save them.
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'css': ['prettier', 'stylelint'],
      \   'javascript': ['eslint', 'prettier'],
      \   'python': ['isort', 'black'],
      \   'HTML': ['HTMLHint', 'proselint'],
      \   'ruby': ['rubocop'],
      \   'go': ['gofmt', 'goimports'],
      \}

 let g:ale_linters = {
             \ 'go': ['staticcheck'],
             \ 'ruby': ['solargraph'],
             \ 'sh': ['language_server'],
             \}
let g:ale_fix_on_save = 1
let g:ale_disable_lsp = 1
let g:ale_sign_column_always = 1

" #############################################
" Go
" #############################################
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_hightlight_fields = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_addtags_transform = "camelcase"
let g:go_fmt_autosave = 1                          " Enable auto formatting on saving
let g:go_fmt_command = "goimports"                 " Run `goimports` on your current file on every save
" Status line types/signatures
let g:go_auto_type_info = 1


" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" Map keys for most used commands.
" Ex: `\b` for building, `\r` for running and `\b` for running test.
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)


" #############################################
" FZF - Fuzzy search
" #############################################
nnoremap <C-p> :GFiles<CR>
"nnoremap <C-P> :Files<cr>       " Jump to specific file
nnoremap \ :Rg<space>           " Search whole project



" #############################################
" Nerd tree
" #############################################
"let NERDTreeShowHidden=1      "Show hidden files
let g:NERDSpaceDelims=1        "Add a space before and after delimeters
map <C-n> :NERDTreeToggle<CR>
"let NERDTreeShowHidden=1      "Show hidden files


" #############################################
" ack.vim --- {{{

" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 1

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!

" Maps <leader>/ so we're ready to type the search keyword
nnoremap <Leader>/ :Ack!<Space>

" Navigate quickfix list with ease
"nnoremap <silent> [q :cprevious<CR>
"nnoremap <silent> ]q :cnext<CR>

" }}}

" #############################################
" COC
" #############################################
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-sh',
  \ 'coc-markdownlint',
  \ 'coc-go',
  \ ]

" " To go back to previous state use Ctrl+O
nmap <silent><leader>gd <Plug>(coc-definition)
nmap <silent><leader>gy <Plug>(coc-type-definition)
nmap <silent><leader>gi <Plug>(coc-implementation)
nmap <silent><leader>gr <Plug>(coc-references)

" " Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" " Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" " Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected


" #############################################
"  NEOTERM
" #############################################

"let g:neoterm_default_mod='belowright'              " open terminal in bottom split
"let g:neoterm_size=16                               " terminal split size
"let g:neoterm_autoscroll=1                          " scroll to the bottom when running a command
"let g:neoterm_autoinsert=1                          " start in insert mode
"nnoremap <leader><cr> :TREPLSendLine<cr>j           " send current line and move down
"vnoremap <leader><cr> :TREPLSendSelection<cr>       " send current selection
"nnoremap <A-t> :Ttoggle<CR>

"let g:VimuxOrientation = "h"
"let g:VimuxUseNearest = 0
"let g:VimuxRunnerType = "window"

"let g:nvimux_prefix = "<C-a>",
"let g:nvimux_open_term_by_default = true,
"let g:nvimux_new_window_buffer = "single",
"let g:nvimux_quickterm_direction = "botright",
"let g:nvimux_quickterm_orientation = "vertical"',
"let g:nvimux_quickterm_scope = "t",
"let g:nvimux_quickterm_size = "80",


" #############################################
" Vim-workspace
" #############################################
let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'
nnoremap <leader>s :ToggleWorkspace<CR>
