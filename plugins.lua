return {
  { "sainnhe/gruvbox-material" },
  { "AstroNvim/astrocommunity" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.color.twilight-nvim" },
  {
    import = "astrocommunity.motion.mini-move",
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
  { import = "astrocommunity.completion.copilot-lua-cmp" },
}
