vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Toggle relative line numbers (Recommended for Hybrid setup)
vim.keymap.set('n', '<leader>kl', ':set relativenumber!<CR>', { desc = 'Toggle relative line numbers' })

-- Alternatively, toggle absolute line numbers entirely
vim.keymap.set('n', '<leader>l', ':set number!<CR>', { desc = 'Toggle absolute line numbers' })
