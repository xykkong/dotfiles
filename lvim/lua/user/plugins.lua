return {

  -- -- LSP and linting
  -- { "nvim-treesitter/nvim-treesitter-textobjects", event = "BufRead" },
  -- {
  --   "nvim-treesitter/playground",
  --   cmd = "TSPlaygroundToggle",
  --   config = function()
  --     lvim.builtin.treesitter.playground.enable = true
  --   end,
  -- },
  -- {
  --   "kevinhwang91/nvim-bqf",
  --   event = "BufRead",
  --   config = function()
  --     require("bqf").setup {
  --       auto_enable = true,
  --       preview = {
  --         auto_preview = false,
  --       },
  --     }
  --   end,
  -- },
  -- #An extension for telescope.nvim that allows you operate zoxide within Neovim
  -- {
  --   "jvgrootveld/telescope-zoxide",
  --   after = "telescope.nvim",
  --   config = function()
  --     require("user.telescope").setup_z()
  --   end,
  -- },
  -- {
  --   'gelguy/wilder.nvim',
  --   config = function()
  --     -- config goes here
  --   end,
  -- },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  -- neovim motions on speed
  -- {
  --   "phaazon/hop.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("hop").setup()
  --     vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
  --     vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
  --   end,
  -- },
  -- #motion plugin with incremental input processing
  -- {
  --   "ggandor/lightspeed.nvim",
  --   event = "BufWinEnter",
  --   config = function()
  --     require("user.lightspeed").setup()
  --   end,
  -- },
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   run = "cd app && npm install",
  --   ft = "markdown",
  --   config = function()
  --     vim.g.mkdp_auto_start = 1
  --   end,
  -- },
  -- -- TMUX and session management integration
  -- {
  --   "aserowy/tmux.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("user.tmux").setup()
  --   end,
  -- },
  -- -- UI - A smooth scrolling neovim plugin written in lua
  -- {
  --   "karb94/neoscroll.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("neoscroll").setup { respect_scrolloff = true }
  --   end,
  -- },
  -- -- GIT
  -- {
  --   "ruifm/gitlinker.nvim",
  --   event = "BufWinEnter",
  --   config = function()
  --     require("gitlinker").setup()
  --   end,
  -- },
  -- -- MISC
  -- {
  --   "michaelb/sniprun",
  --   run = "bash ./install.sh",
  --   config = function()
  --     require("user.sniprun").setup()
  --   end,
  -- },
  -- {
  --   "nvim-neorg/neorg",
  --   ft = "norg",
  --   after = "nvim-treesitter", -- You may want to specify Telescope here as well
  --   config = function()
  --     require("neorg").setup {
  --       load = {
  --         ["core.defaults"] = {},
  --         ["core.norg.dirman"] = {
  --           config = {
  --             workspaces = {
  --               notes = "~/notes",
  --             },
  --           },
  --         },
  --       },
  --     }
  --   end,
  -- },
}
