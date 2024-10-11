return {
	{
		"yetone/avante.nvim",
		enabled = true,
		lazy = true,
		event = "VeryLazy",
		build = "make",
		opts = {
			-- add any opts here
			provider = "openai",
			openai = {
				endpoint = "https://api.openai.com/v1",
				model = "gpt-4o",
				temperature = 0.1,
				max_tokens = 4096,
				["local"] = false,
			},
		},
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			{
				"grapp-dev/nui-components.nvim",
				dependencies = {
					"MunifTanjim/nui.nvim",
				},
			},
			--- The below is optional, make sure to setup it properly if you have lazy=true
			{
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "Avante" },
				},
				ft = { "markdown", "Avante" },
			},
		},
	},
}
