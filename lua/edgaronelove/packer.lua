vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }




    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }


    use { 'lukas-reineke/indent-blankline.nvim', config = function()
        require("ibl").setup()
    end }

    use { 'folke/tokyonight.nvim' }

    use 'onsails/lspkind-nvim'
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use { "neovim/nvim-lspconfig" }

    use 'barrett-ruth/live-server.nvim'

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    use('kyazdani42/nvim-tree.lua')
    use('kyazdani42/nvim-web-devicons')
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('mbbill/undotree')



    --cmp autocomplete
    use 'hrsh7th/nvim-cmp'         -- Completion plugin
    use 'hrsh7th/cmp-nvim-lsp'     -- LSP completion source for nvim-cmp
    use 'hrsh7th/cmp-buffer'       -- Buffer completion source for nvim-cmp
    use 'hrsh7th/cmp-path'         -- Path completion source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippet completion source for nvim-cmp
    use 'L3MON4D3/LuaSnip'         -- Snippet engine
    use 'rafamadriz/friendly-snippets' -- Predefined snippets
    use 'windwp/nvim-autopairs"'
    use 'lewis6991/impatient.nvim'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }




end)
