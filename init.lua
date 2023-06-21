require("febert")

if vim.g.vscode then
		-- VSCode extension
	print("hello vscode")
	vim.api.nvim_set_keymap('n', '<space>.', ":call VSCodeNotify('whichkey.show')<CR>", {noremap = true, silent = true})
	vim.api.nvim_set_keymap('x', '<space>.', ":call VSCodeNotify('whichkey.show')<CR>", {noremap = true, silent = true})


	-- Simulate same TAB behavior in VSCode 
	vim.api.nvim_set_keymap('n', '<Tab>', ':Tabnext<CR>', { noremap = true }) 
	vim.api.nvim_set_keymap('n', '<S-Tab>', ':Tabprev<CR>', { noremap = true })
else
    -- ordinary Neovim
end

vim.g.mapleader = " "
vim.o.ruler = true
vim.o.cmdheight = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.autoindent = true

-- Better indenting 
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true }) 
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

-- space-e goes to explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.o.number = true
vim.o.relativenumber = true
vim.keymap.set('n', '<F2>', ':set relativenumber!<CR>')
