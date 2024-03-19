return {
  n = {
    s = "",
    U = ":redo<CR>",
    ["<leader>tr"] = {
      function() require("neotest").run.run { suite = false, vim.fn.expand "%" } end,
      desc = "Run tests in current file",
    },
    ["<leader>td"] = {
      function() require("neotest").run.run { suite = false, strategy = "dap" } end,
      desc = "Debug current test",
    },
    ["<leader>fg"] = { function() require("telescope.builtin").git_status() end, desc = "Git modified files" },
  },
}
