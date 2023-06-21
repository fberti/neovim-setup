-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- require("kimbox").load() == colorscheme kimbox
	use({ "lmburns/kimbox", config = [[require("kimbox").load()]] })
	-- or
	use({
		"lmburns/kimbox",
		config = function()
			require("kimbox").setup({
				-- options
			})
			require("kimbox").load()
		end
	})
end)
