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

    -- use 'itchyny/lightline.vim'

    use "lukas-reineke/indent-blankline.nvim"

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use "tpope/vim-surround"
    -- themes: start
    use 'lifepillar/vim-gruvbox8'

    use 'ellisonleao/gruvbox.nvim'
    use "monsonjeremy/onedark.nvim"

    use "arturgoms/moonbow.nvim"

    use "rebelot/kanagawa.nvim"
    use "phha/zenburn.nvim"
    -- darkrose: add support for indent_blanklines.nvim,lualine.
    use("water-sucks/darkrose.nvim")
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    -- themes: end

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use "folke/which-key.nvim"
    
    use "neovim/nvim-lspconfig" 
    use "https://git.sr.ht/~ackyshake/VimCompletesMe.vim"
    use "nvim-lualine/lualine.nvim"
    use "folke/twilight.nvim"
    -- use :BufOnly to delete all buffers except current open
    use { "numtostr/BufOnly.nvim", cmd = "BufOnly" }
end)
