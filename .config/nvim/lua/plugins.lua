return {
    {
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	  end,
	  opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	  }
	},
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
		"nvim-tree/nvim-web-devicons",
	  },
	  config = function()
		require("nvim-tree").setup {view = {side = "right"}}
	  end,
	},
	{
	  "yamatsum/nvim-cursorline",
	  config = function()
		require('nvim-cursorline').setup {
		  cursorline = {
			enable = true,
			timeout = 1000,
			number = false,
		  },
		  cursorword = {
			enable = true,
			min_length = 3,
			hl = { underline = true },
		  }
		}
	  end,
	},
	{
	  "willothy/nvim-cokeline",
	  dependencies = {
		"nvim-lua/plenary.nvim",        -- Required for v0.4.0+
		"nvim-tree/nvim-web-devicons", -- If you want devicons
		--"stevearc/resession.nvim"       -- Optional, for persistent history
	  },
	  config = true
	},
	{
	  "utilyre/barbecue.nvim",
	  name = "barbecue",
	  version = "*",
	  dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	  },
	  opts = {
		-- configurations go here
	  },
	},
	{
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{
	  'alanfortlink/blackjack.nvim',
	  dependencies = { 'nvim-lua/plenary.nvim' }
	},
}
