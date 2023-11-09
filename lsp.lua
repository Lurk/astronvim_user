return {
  lsp = {
    formatting = {
      format_on_save = true, -- enable or disable automatic formatting on save
      timeout_ms = 3200, -- adjust the timeout_ms variable for formatting
      filter = function(client)
        -- if vim.bo.filetype == "css" then return client.name == "null-ls" end

        -- enable all other clients
        return true
      end,
    },
  },
}
