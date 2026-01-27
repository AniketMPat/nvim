return {
	-- {
	-- 	"navarasu/onedark.nvim",
	-- 	priority = 1000,
	--        opts = { style = "cool"},
	-- 	config = function()
	-- 		require("onedark").setup({
	-- 			style = "cool",
	-- 		})
	--            require("onedark").load()
	--        end,
	-- },
	{
	  'folke/tokyonight.nvim',
	  priority = 1000, -- Make sure to load this before all the other start plugins.
	  config = function()
	    ---@diagnostic disable-next-line: missing-fields
	    require('tokyonight').setup {
	      styles = {
	        comments = { italic = false }, -- Disable italics in comments
	      },
	    }
	    vim.cmd.colorscheme 'tokyonight-night'
	  end,
	},
}
