return function()
  vim.opt.spell = true
  vim.opt.spelloptions = "camel"
  vim.opt.spelllang = "en_us"
  vim.api.nvim_set_hl(
    0, -- global highlight group
    "SpellBad",
    { fg = "red", underline = true }
  )
end
