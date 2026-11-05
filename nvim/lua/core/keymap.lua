vim.keymap.set({"n","i"},"<Left>","<Nop>",{silent = true})
vim.keymap.set({"n","i"},"<Right>","<Nop>",{silent = true})
vim.keymap.set({"n","i"},"<Up>","<Nop>",{silent = true})
vim.keymap.set({"n","i"},"<Down>","<Nop>",{silent = true})

vim.keymap.set({"i"},"jm","<Esc>",{silent = true})

vim.g.mapleader = " "
vim.keymap.set({"n","i","c"},"<leader>aa","<Cmd>lua print(123)<CR>",{silent = true})
