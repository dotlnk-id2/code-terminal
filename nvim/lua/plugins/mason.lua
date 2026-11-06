return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig",
    },
    config = function()
        -- 初始化 mason
        require("mason").setup()

        -- 配置 mason-lspconfig 自動安裝與設定 LSP
        require("mason-lspconfig").setup({
            -- 宣告需要自動安裝的語言伺服器清單
            ensure_installed = {
                "lua_ls",    -- Lua 語言伺服器
                "jdtls",     -- Java 語言伺服器
            },
            -- 自動載入並設定所有透過 ensure_installed 安裝的伺服器
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
                -- **[注意 2]** 若未來 Java 專案規模擴大，建議在此處針對 "jdtls" 進行覆寫，改由專用設定檔或搭配 mfussenegger/nvim-jdtls 啟動
            },
        })
    end,
}
