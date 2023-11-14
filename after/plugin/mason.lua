require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "ast_grep","lua_ls","pyright","rust_analyzer","clangd"}

})
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").ast_grep.setup {}
