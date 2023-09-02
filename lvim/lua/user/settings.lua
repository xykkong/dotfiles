-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
--lvim.builtin.indentlines.active = true

lvim.builtin.terminal.active = true

lvim.builtin.which_key.mappings["t"] = { "<cmd>ToggleTerm direction=horizontal size=20<CR>", "Terminal" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Terminal",
--   f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
--   v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
--   h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
-- }

lvim.builtin.which_key.mappings["F"] = { "<cmd>Telescope find_files<CR>", "Find Files" }
lvim.builtin.which_key.mappings["f"] = { "<cmd>Telescope grep_string<CR>", "Find in Files" }
lvim.builtin.which_key.mappings["/"] = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Fuzzy find" }

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "css",
  "elixir",
  "go",
  "java",
  "javascript",
  "json",
  "lua",
  "python",
  "rust",
  "tsx",
  "typescript",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- ---  SETTINGS  ---
-- vim.cmd "set syntax=off"
-- vim.opt.backup = false -- creates a backup file
-- vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
-- vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
-- vim.opt.colorcolumn = "99999" -- fix indentline for now
-- vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
-- vim.opt.cursorline = true -- highlight the current line
-- vim.opt.expandtab = true -- convert tabs to spaces
-- vim.opt.fileencoding = "utf-8" -- the encoding written to a file
-- vim.opt.fillchars = { fold = " " } -- remove folding chars
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldlevel = 10 -- don't close any folds by default
-- vim.opt.foldmethod = "expr"
-- vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
-- vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
-- vim.opt.ignorecase = true -- ignore case in search patterns
-- vim.opt.inccommand = "split" -- showsthe effects of :s as you type.
-- vim.opt.mouse = "a" -- allow the mouse to be used in neovim
-- vim.opt.number = true -- set numbered lines
-- vim.opt.pumheight = 10 -- pop up menu height
-- vim.opt.relativenumber = true -- set relative numbered lines
-- vim.opt.scrolloff = 8 -- minimal number of screen lines to keep above and below the cursor.
-- vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
-- vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.showtabline = 2 -- always show tabs
-- vim.opt.sidescrolloff = 8 -- minimal number of screen lines to keep left and right of the cursor.
-- vim.opt.signcolumn = "auto:1-2" -- always show the sign column, otherwise it would shift the text each time
-- vim.opt.smartcase = true -- smart case
-- vim.opt.smartindent = false -- make indenting smarter again
-- vim.opt.splitbelow = true -- force all horizontal splits to go below current window
-- vim.opt.splitright = true -- force all vertical splits to go to the right of current window
-- vim.opt.swapfile = false -- creates a swapfile
-- vim.opt.tabstop = 2 -- insert 4 spaces for a tab
-- vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
-- vim.opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.opt.title = true -- set the title of window to the value of the titlestring
-- vim.opt.undodir = get_cache_dir() .. "/undo" -- set an undo directory
-- vim.opt.undofile = true -- enable persisten undo
-- vim.opt.updatetime = 300 -- faster completion
-- vim.opt.wrap = false -- display lines as one long line
-- vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

-- vim.opt.iskeyword:append "-" -- used in searching and recognizing with many commands
-- vim.opt.whichwrap:append "<,>,[,],h,l" -- let movement keys reach the previous line
-- vim.opt.shortmess:append "c" -- don't show the dumb matching stuff
