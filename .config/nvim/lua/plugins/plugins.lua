return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "elixir",
      },
      keys = {
        { "<c-space>", desc = "Increment selection" },
      },
      { "<bs>", desc = "Decrement selection", mode = "x" },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          scope_incremental = "<CR>",
          node_incremental = "<TAB>",
          node_decremental = "<S-TAB>",
        },
      },
    },
  },
  {
    "elixir-tools/elixir-tools.nvim",
    lazy = true,
    ft = { "elixir", "heex", "eelixir" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        credo = { enable = false },
        nextls = { enable = false, init_options = { experimental = { completions = { enable = true } } } },
        elixirls = {
          tag = "v0.18.1",
          enable = false,
          settings = elixirls.settings({
            fetchDeps = false,
            dialyzerEnabled = false,
            enableTestLenses = true,
          }),
        },
      })
    end,
    dependencies = {
      "folke/which-key.nvim",
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
      integrations = {
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        flash = true,
        neotree = true,
        neotest = true,
        telescope = true,
        which_key = true,
      },
      dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.01, -- percentage of the shade to apply to the inactive window
      },
    },
  },
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        -- options used when flash is activated through
        -- a regular search with / or ?
        search = {
          -- when true, flash will be activated during regular search by default.
          -- You can always toggle when searching with require("flash").toggle()
          enabled = false,
        },
      },
    },
  },
  { "simrat39/symbols-outline.nvim", opts = {} },
  { "vim-test/vim-test" },
  { "mg979/vim-visual-multi", branch = "master" },
  { "andyl/vim-projectionist-elixir" },
  { "tpope/vim-projectionist", lazy = false },
  { "akinsho/toggleterm.nvim", version = "*", opts = { open_mapping = [[<c-\>]] } },
}
