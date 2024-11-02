-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})


require("mason-null-ls").setup({
    ensure_installed = { "stylua", "jq", "prettierd", "prettier"}
})


-- local opts = {
--   on_attach = function(client, bufnr)
--     if client.supports_method("textDocument/formatting") then
--       vim.api.nvim_clear_autocmds({
--         group = augroup,
--         buffer= bufnr,
--       })
--       vim.api.nvim_create_autocmd("BufWritePre", {
--         group = augroup,
--         buffer = bufnr,
--       })
--     end
--   end,
-- }
--
--
-- return opts

