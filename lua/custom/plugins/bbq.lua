-- dosent work well with typescipt-tools
-- switch to tsserver then enable
-- this shows contextual cursor location at the top
return {
	{
		"utilyre/barbecue.nvim",
		enabled = false,
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			-- configurations go here
		},
	}
}
