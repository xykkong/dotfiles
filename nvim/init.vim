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
set tabstop=2       " number of visual spaces per TAB
set shiftwidth=2    " number of spaces in tab when editing
set expandtab       " expand tab in spaces


"" ================ Scrolling ========================
set scrolloff=3                 " Show x lines after scroll
set scrolljump=5                " Line to scroll when cursor leaves screen
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
set report=0                          "Always report changed lines
set colorcolumn=80                    "Use a color column on the 80-character mark
set clipboard=unnamed                 "Set clipboard to use unnamed register
"set clipboard=unnamedplus,unnamed
set list listchars=tab:\ \ ,trail:·   "Display tabs and trailing spaces visually
set wildignore+=*.o,*.obj,.git,node_modules,_site,*.class,*.zip,*.aux
set cpoptions+=$					  "put a '$' at the end of the changed text
set mouse=a                           "enable mouse support

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


" =============== Plugins Configuration ===============
" Load plugins configuration in plugins_conf.vim
if filereadable(expand("~/.config/nvim/plugins_conf.vim"))
  source ~/.config/nvim/plugins_conf.vim
endif
