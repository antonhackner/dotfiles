vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- fugitive keymaps
vim.keymap.set("n", "<leader>G", vim.cmd.Git)

-- gitsigns keymaps
vim.keymap.set("n", "<leader>gsb", function() require('gitsigns').stage_buffer() end)
vim.keymap.set("n", "<leader>gsh", function() require('gitsigns').stage_hunk() end)

-- undotree keymaps
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set('n', 'E', vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename)
