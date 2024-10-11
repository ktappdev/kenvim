-- return {
-- 	{             -- Useful plugin to show you pending keybinds.
-- 		'folke/which-key.nvim',
-- 		event = 'VimEnter', -- Sets the loading event to 'VimEnter'
-- 		config = function() -- This is the function that runs, AFTER loading
-- 			require('which-key').setup()
--
-- 			-- Document existing key chains
-- 			require('which-key').register {
-- 				{ "<leader>c",  group = "[C]ode" },
-- 				{ "<leader>c_", hidden = true },
-- 				{ "<leader>d",  group = "[D]ocument" },
-- 				{ "<leader>d_", hidden = true },
-- 				{ "<leader>g",  group = "[G]it" },
-- 				{ "<leader>g_", hidden = true },
-- 				{ "<leader>l",  group = "[L]azy" },
-- 				{ "<leader>l_", hidden = true },
-- 				{ "<leader>r",  group = "[R]ename" },
-- 				{ "<leader>r_", hidden = true },
-- 				{ "<leader>s",  group = "[S]earch" },
-- 				{ "<leader>s_", hidden = true },
-- 				{ "<leader>w",  group = "[W]orkspace" },
-- 				{ "<leader>w_", hidden = true },
-- 			}
-- 		end,
-- 	},
-- }
return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},

		},
	}
}
