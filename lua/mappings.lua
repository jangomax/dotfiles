local keymap = vim.keymap

keymap.set('n', '∆', '<Cmd> resize -2 <Cr>')
keymap.set('n', '˚', '<Cmd> resize +2 <Cr>')
keymap.set('n', '˙', '<Cmd> vertical resize -2 <Cr>')
keymap.set('n', '¬', '<Cmd> vertical resize +2 <Cr>')

keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')

keymap.set('n', '<Leader>o', 'o<Esc>^Da')
keymap.set('n', '<Leader>O', 'O<Esc>^Da')

keymap.set('c', 'W', 'w')
--x doesn't yank char
keymap.set('n', 'x', '"_x')
--select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

keymap.set('n', '<Tab>', '<Cmd> bnext <Cr>')
keymap.set('n', '<S-Tab>', '<Cmd> bprevious <Cr>')

-- Plugin Maps
keymap.set('n', '<Leader>/', '<Cmd> nohlsearch <Cr>', { silent = true })
keymap.set('n', '<Leader>q', '<Cmd> Sayonara! <Cr>', { silent = true })
keymap.set('n', '<Leader>f', '<Cmd> NvimTreeToggle <Cr>', { silent = true })
keymap.set('n', '<Leader>l', '<Cmd> LazyGit <Cr>', { silent = true })
keymap.set('n', '<Leader>t', '<Cmd> Telescope find_files <Cr>', { silent = true })
keymap.set('n', '<Leader>g', '<Cmd> lua require(\'telescope.builtin\').live_grep() <Cr>', { silent = true })
