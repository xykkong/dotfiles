call plug#begin('~/.config/nvim/plugged')

" THEMES
Plug 'sainnhe/sonokai'
"Plug 'lifepillar/vim-solarized8'
"Plug 'altercation/vim-colors-solarized'

"Show a startup page
Plug 'mhinz/vim-startify'

"Statusline
Plug 'itchyny/lightline.vim'

"""""" Helpers
"Multiple lines comments
Plug 'preservim/nerdcommenter'

"Save workspaces
Plug 'thaerkh/vim-workspace'

"Plug 'tpope/vim-surround'

"Auto-complete parenthesis and other brackets
Plug 'jiangmiao/auto-pairs'

"Code completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Solid syntax and indentation support
Plug 'sheerun/vim-polyglot'

"Linter
Plug 'dense-analysis/ale'

"expand similar abbreviations (HTML, CSS)
Plug 'mattn/emmet-vim'

"Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Javascript
Plug 'pangloss/vim-javascript'

"Vue
Plug 'posva/vim-vue'


"""" File finder
"File explorer
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'

"Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Ack
Plug 'mileszs/ack.vim'

"""""" Tools
"Git
Plug 'airblade/vim-gitgutter'     "Shows a git diff sign in the line
Plug 'itchyny/vim-gitbranch'      "Show current branch

"Terminal 
"Plug 'kassio/neoterm'
Plug 'benmills/vimux'
"Plug 'christoomey/vim-tmux-navigator'

call plug#end()
