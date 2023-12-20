-- [nfnl] Compiled from fnl/plugins/rust.fnl by https://github.com/Olical/nfnl, do not edit.
local rt = require("rust-tools")
local wk = require("which-key")
rt.setup({tools = {autoSetHints = true}, server = {settings = {["rust-analyzer"] = {assist = {importGranularity = "module", importPrefix = "by_self"}, cargo = {loadOutDirsFromCheck = true}, procMacro = {enable = true}}}}, dap = {adapter = {type = "executable", command = "lldb-vscode", name = "rt_lldb"}}})
vim.api.nvim_set_keymap("n", "<localleader>ef", ":RustRun<CR>", {noremap = true, silent = true})
return wk.register({p = {name = "+project", r = {":20split term://cargo run<CR>", "run main"}, t = {":20split term://cargo test<CR>", "run all tests"}, c = {":RustOpenCargo<CR>", "open cargo"}, d = {":RustOpenExternalDocs<CR>", "open symbol docs"}}}, {prefix = "<leader>"})
