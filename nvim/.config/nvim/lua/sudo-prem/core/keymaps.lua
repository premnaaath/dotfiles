local opts = { noremap = true, silent = true }

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', opts)
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "H", "0", opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("n", "L", "$", opts)

vim.keymap.set("n", "X", ":keeppatterns substitute/\\s*\\%#\\s*/\\r/e <bar> normal! ==^<cr>", opts)
vim.keymap.set('n', '<Esc>', ':noh<CR>', opts)
vim.keymap.set("n", "<C-p>", ":echo expand('%:p')<CR>", opts)
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)
vim.keymap.set({ "v", "x" }, "<", "<gv", opts)
vim.keymap.set({ "v", "x" }, ">", ">gv", opts)

vim.keymap.set('n', '<A-h>', ':vertical resize +2<CR>', opts)
vim.keymap.set('n', '<A-j>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<A-k>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<A-l>', ':vertical resize -2<CR>', opts)

vim.keymap.set({ 'n', 'v' }, '<leader>\\', '<C-w>v', opts)
vim.keymap.set({ 'n', 'v' }, '<leader>-', '<C-w>s', opts)
vim.keymap.set({ 'n', 'v' }, '<leader>x', ':close<CR>', opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts)
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts)

vim.keymap.set("x", "p", [["_dP]], opts)
vim.keymap.set({ "n", "v" }, "y", '"*y', opts)
vim.keymap.set({ "n", "v" }, "d", '"_d', opts)
vim.keymap.set({ "n", "v" }, "c", '"_c', opts)
vim.keymap.set({ "n", "v" }, "D", '"_D', opts)
vim.keymap.set({ "n", "v" }, "C", '"_C', opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)