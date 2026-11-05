return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
    },
    keys = {
        { "<leader>bh", ":BufferLineCyclePrev<CR>", silent = true},
        { "<leader>bl", ":BufferLineCycleNext<CR>", silent = true},
        { "<leader>bp", ":BufferLineCyclePick<CR>", silent = true},
        { "<leader>bc", ":bdelete<CR>", silent = true},
    },
    lazy = false,

}
