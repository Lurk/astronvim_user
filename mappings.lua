return {
  n = {
    s = "",
    U = ":redo<CR>",
    ["<leader>tr"] = ":Neotest run<CR>",
    ["<leader>fg"] = function() require("telescope.builtin").git_status() end,
  },
}
