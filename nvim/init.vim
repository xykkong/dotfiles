"""""""""""""""""""""""""""""""""""
"""""""""""" VIM SETTINGS """""""""
"""""""""""""""""""""""""""""""""""
set termguicolors       "Enable true colors support
syntax on               "Turn on syntax highlighting


" =============== Plug Initialization ===============
" Loads all the plugins specified in plug.vim
if filereadable(expand("~/.config/nvim/plug.vim"))
  source ~/.config/nvim/plug.vim
endif

"Turn on filetype specific options for plugins and indentation
filetype plugin indent on


"" ================ Indentation =====================
set tabstop=2
set shiftwidth=2
set expandtab       "expand tab in spaces


"" ================ Scrolling ========================
set scrolloff=8                 "Show x lines after scroll
set sidescrolloff=15


" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowritebackup


" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && isdirectory(expand('~').'/.config/nvim/undo')
  silent !mkdir ~/.config/nvim/undo > /dev/null 2>&1
  set undodir=~/.config/nvim/undo
  set undofile
  set undolevels=1000         " How many undos
  set undoreload=10000        " number of lines to save for undo
endif


" ================ Search ===========================
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital


" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default


" ================ General Settings ============================
set splitbelow                        "Split screen down and right
set splitright
set confirm                           "Show confirmation message when file is not saved
set noshowmode                        "Disable default statusline
set title                             "Set the title of the window
set visualbell                        "No sounds
set cursorline                        "Highlight current line
set number                            "Show line numbers on the sidebar
"set relativenumber                   "Show the line number relative to the line with the cursor
set showmatch                         "Show matching brackets
set nowrap                            "Don't wrap lines
set colorcolumn=80                    "Use a color column on the 80-character mark
set clipboard=unnamed                 "Set clipboard to use unnamed register
set list listchars=tab:\ \ ,trail:·   "Display tabs and trailing spaces visually
set wildignore+=*.o,*.obj,.git,node_modules,_site,*.class,*.zip,*.aux
set cpoptions+=$					" put a '$' at the end of the changed text

colorscheme sonokai
set background=dark
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256



" =============== Remap ===============
" Load remaps config in maps.vim
if filereadable(expand("~/.config/nvim/maps.vim"))
  source ~/.config/nvim/maps.vim
endif



" =============== Plugin Configuration ===============
"Available values: `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`
let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1


"Lightline
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


"Ale
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
             \}
let g:ale_fix_on_save = 1

"Go
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


" Nerd tree
"let NERDTreeShowHidden=1    "Show hidden files
let g:NERDSpaceDelims=1     "Add a space before and after delimeters


" #############################################
"  Ack
" #############################################
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" #############################################
"  NEOTERM
" #############################################

"let g:neoterm_default_mod='belowright'  " open terminal in bottom split
"let g:neoterm_size=16                   " terminal split size
""let g:neoterm_autoscroll=1              " scroll to the bottom when running a command
"let g:neoterm_autoinsert=1              " start in insert mode
"nnoremap <leader><cr> :TREPLSendLine<cr>j " send current line and move down
"vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection
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

"Vim-workspace
let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'
nnoremap <leader>s :ToggleWorkspace<CR>
