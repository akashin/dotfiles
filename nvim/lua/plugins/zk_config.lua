-- [nfnl] Compiled from fnl/plugins/zk_config.fnl by https://github.com/Olical/nfnl, do not edit.
local wk = require("which-key")
local zk = require("zk")
local function on_attach(client, bufnr)
  return vim.api.nvim_exec_autocmds("User", {pattern = "LspAttached"})
end
zk.setup({picker = "telescope", lsp = {config = {cmd = {"zk", "lsp"}, name = "zk", on_attach = on_attach}, auto_attach = {enabled = true, filetypes = {"markdown"}}}})
return wk.register({n = {name = "+notes", f = {":ZkNotes { tags = { 'NOT weekly' } }<CR>", "find note"}, r = {":ZkNotes { tags = { 'weekly' }, sort = { 'created' } }<CR>", "find note"}, t = {":ZkTags<CR>", "find note by tag"}, c = {":ZkNew { dir = 'roam', title = vim.fn.input('Title: ') }<CR>", "create note"}, d = {":ZkNew { dir = 'diary', date = 'now' }<CR>", "open weekly diary"}}}, {prefix = "<leader>"})
