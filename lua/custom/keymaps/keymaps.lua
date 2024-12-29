local map = vim.keymap.set
map('n', 'vs', ':vsplit<cr>', { desc = ' split vertiacally ' })
map('n', 'ss', ':split<cr>', { desc = ' split horizontally' })
map('n', '<leader>;', '<cmd>close<cr>', { desc = ' delete buffer ' })
map('n', '<leader>e', '<cmd>Neotree toggle<cr>', { desc = 'Neotree toggle' })
map('n', '<leader>9', 'gg<S-V><S-G> <CR>', { desc = 'select_all' })

map('n', '<leader>gg', ':!tmux new-window -c ' .. vim.fn.getcwd() .. ' -- lazygit <CR><CR>', { silent = true })
vim.keymap.set('n', 'yc', 'yy<cmd>normal gcc<CR>p')
vim.keymap.set('v', '<leader>C', 'ygvgc`>p', { remap = true, desc = '[C]opy to a comment above' })

map('n', '<C-h>', '<C-w>h', { desc = 'Go to Left Window', remap = true })
map('n', '<C-j>', '<C-w>j', { desc = 'Go to Lower Window', remap = true })
map('n', '<C-k>', '<C-w>k', { desc = 'Go to Upper Window', remap = true })
map('n', '<C-l>', '<C-w>l', { desc = 'Go to Right Window', remap = true })

-- buffers
map('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
map('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
map('n', '[b', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
map('n', ']b', '<cmd>bnext<cr>', { desc = 'Next Buffer' })

-- Clear highlight search
map({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch' })

-- Terminal keymaps
function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
