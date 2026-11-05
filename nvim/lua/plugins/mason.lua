return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig",
    },
    opts = {},
    config = function (_, opts)
        require("mason").setup(opts)
        local registry = require("mason-registry")
        local success, package = pcall(registry.get_package,"lua-language-server")
        if success and not package:is_installed() then
            package:install()
        end

        local java_lsp = require("mason-lspconfig.mappings.server").package_to_lspconfig["lua-language-server"]
        require("lspconfig")[java_lsp].setup({})
        vim.cmd("LspStart")
    end
            
}
