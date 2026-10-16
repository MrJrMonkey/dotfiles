local map = vim.keymap.set


map("n", "<leader>H", "noh<CR>", { desc = "Clear Highlights" })
map({ 'n', 'v' }, '<leader>y', '"Copy to clipboard -> +y')
map({ 'n', 'v' }, '<leader>d', '"Cut and copy to clipboard -> +d')
