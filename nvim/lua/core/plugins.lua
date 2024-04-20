local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	{ "nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
    	dependencies = {
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      		"MunifTanjim/nui.nvim",
      		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` fo 
					   }
	},
	
	{ 'nvim-treesitter/nvim-treesitter' },

	{ 'marko-cerovac/material.nvim' },

	{ 'nvim-lualine/lualine.nvim' },

	{ 'windwp/nvim-autopairs',
	  event = "InsertEnter",
    	  opts = {} -- this is equalent to setup({}) function
	},

	{ 'akinsho/bufferline.nvim', 
	  version = "*", 
	  dependencies = 'nvim-tree/nvim-web-devicons'
  	},

	{ 'terrortylor/nvim-comment' },

	{ 'lewis6991/gitsigns.nvim' },
	
	{ 'akinsho/toggleterm.nvim', 
	  version = "*", 
	  config = true
  	},

	{ "folke/todo-comments.nvim",
  	  dependencies = { "nvim-lua/plenary.nvim" },
  	  opts = {
    	  -- your configuration comes here
    	  -- or leave it empty to use the default settings
    	  -- refer to the configuration section below
			 }
	},

	{ 'nvim-telescope/telescope.nvim', 
	  tag = '0.1.5',
      	  dependencies = { 'nvim-lua/plenary.nvim' }
    },
	
	{ 'williamboman/mason.nvim' },

	{ 'williamboman/mason-lspconfig.nvim' },

	{ 'neovim/nvim-lspconfig' },

	{ 'hrsh7th/cmp-nvim-lsp' }, 

	{ 'hrsh7th/cmp-buffer' }, 

	{ 'hrsh7th/cmp-path' },

    { 'hrsh7th/cmp-cmdline' }, 
	
	{ 'hrsh7th/nvim-cmp' },

	{ 'ErichDonGubler/lsp_lines.nvim' },
})
