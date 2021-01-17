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
"Vim plugin that provides additional text objects
Plug 'wellle/targets.vim'

"Multiple lines comments
Plug 'preservim/nerdcommenter'

"Vim sugar for the UNIX shell commands that need it the most
Plug 'tpope/vim-eunuch'

"Basic tmux support for Vim
Plug 'tpope/vim-tbone'

"Simple zoom window plugin
Plug 'troydm/zoomwintab.vim'

"Save workspaces
Plug 'thaerkh/vim-workspace'

"Make the yanked region apparent
Plug 'machakann/vim-highlightedyank'

"Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

"Auto-complete parenthesis and other brackets
Plug 'jiangmiao/auto-pairs'

" Some extra mappings
Plug 'tpope/vim-unimpaired'

"Code completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Solid syntax and indentation support
Plug 'sheerun/vim-polyglot'

"Linter
Plug 'dense-analysis/ale'

"expand similar abbreviations (HTML, CSS)
Plug 'mattn/emmet-vim'

"Asynchronous build and test dispatcher
"Plug 'tpope/vim-dispatch'

"add some repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'


"""" File finder
"File explorer
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'

"Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Ack
Plug 'mileszs/ack.vim'



""" Languages
"Add snippets
Plug 'honza/vim-snippets'

"Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Javascript
"Plug 'pangloss/vim-javascript'

"Vue
"Plug 'posva/vim-vue'

"Dockerfile
"Plug 'ekalinin/Dockerfile.vim'

"Markdown - The tabular plugin must come before vim-markdown.
"Plug 'godlygeek/tabular'
"Plug 'tpope/vim-markdown'

"Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}




"""""" Tools
"Git
Plug 'airblade/vim-gitgutter'     "Shows a git diff sign in the line
Plug 'itchyny/vim-gitbranch'      "Show current branch
Plug 'tpope/vim-fugitive' 		  "Git command

"Terminal
"Plug 'kassio/neoterm'
"Plug 'benmills/vimux'
Plug 'hkupty/nvimux'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'caenrique/nvim-toggle-terminal'

call plug#end()
