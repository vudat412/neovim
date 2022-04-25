return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    event = "BufRead",
    config = "require('lualine-config')"
  }
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    event = "BufWinEnter",
    config = "require('bufferline-config')"
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    cmd = "NvimTreeToggle",
    config = "require('nvim-tree-config')"
  }
  use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
  use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
  use {'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp"}
  use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')"}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'}, { "kdheepak/lazygit.nvim" } },
    cmd = "Telescope",
    -- config = "require('telescope-config')"
    config = function()
        require("telescope").load_extension("lazygit")
    end,
  }
  use {'neovim/nvim-lspconfig', config = "require('lsp')"}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  use {'onsails/lspkind-nvim'}
  use {'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead"}
  use {
    "glepnir/dashboard-nvim",
     config = function()
       require("dashboard-config").setup()
     end,
  }

  use {"akinsho/toggleterm.nvim", config = "require('toggleterm-config')"}
  use {"terrortylor/nvim-comment", config = "require('comment-config')"}
  use {'tami5/lspsaga.nvim', config = "require('lspsaga-config')"}
  use {'williamboman/nvim-lsp-installer'}
  -- nvim telescoop media just use for linux not support windows if can not codec 
  -- use { 'nvim-telescope/telescope-media-files.nvim' }
  use {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = 'cd app && yarn install'
  }
  use {'tomlion/vim-solidity'}

end)
