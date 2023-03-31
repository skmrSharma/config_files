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

	use 'RRethy/nvim-base16'

    use 'itchyny/lightline.vim'

    use 'protesilaos/prot16-vim'

    use 'lifepillar/vim-gruvbox8'

    use 'ellisonleao/gruvbox.nvim'

    use "lukas-reineke/indent-blankline.nvim"

    use "monsonjeremy/onedark.nvim"

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use "arturgoms/moonbow.nvim"

    use "rebelot/kanagawa.nvim"

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
end)
