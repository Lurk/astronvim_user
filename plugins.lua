return {
  { "folke/neodev.nvim" },
  { "sainnhe/gruvbox-material" },
  { "AstroNvim/astrocommunity" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  {
    "rcarriga/nvim-notify",
    opts = { stages = "static" },
  },
  {
    "indent-blankline.nvim",
    opts = {
      indent = { char = "·" },
      scope = { show_start = false, show_end = false },
      exclude = {
        buftypes = {
          "nofile",
          "terminal",
        },
        filetypes = {
          "help",
          "startify",
          "aerial",
          "alpha",
          "dashboard",
          "lazy",
          "neogitstatus",
          "NvimTree",
          "neo-tree",
          "Trouble",
        },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    ft = { "javascript", "typescript", "typescriptreact", "lua", "python", "go", "rust" },
    dependencies = {
      "rouge8/neotest-rust",
      "haydenmeade/neotest-jest",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      {
        "folke/neodev.nvim",
        opts = function(_, opts)
          opts.library = opts.library or {}
          if opts.library.plugins ~= true then
            opts.library.plugins = require("astronvim.utils").list_insert_unique(opts.library.plugins, "neotest")
          end
          opts.library.types = true
        end,
      },
    },
    opts = function()
      return {
        adapters = {
          require "neotest-rust",
          require "neotest-jest",
        },
      }
    end,
    config = function(_, opts)
      -- get neotest namespace (api call creates or returns namespace)
      local neotest_ns = vim.api.nvim_create_namespace "neotest"
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, neotest_ns)
      require("neotest").setup(opts)
    end,
  },
  {
    "echasnovski/mini.move",
    keys = {
      { "<S-Up>", mode = "n", desc = "Move line up" },
      { "<S-Down>", mode = "n", desc = "Move line Down" },
      { "<S-Up>", mode = "v", desc = "Move selection up" },
      { "<S-Down>", mode = "v", desc = "Move selection right" },
    },
    opts = {
      mappings = {
        down = "<S-Down>",
        up = "<S-Up>",
        line_down = "<S-Down>",
        line_up = "<S-Up>",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
