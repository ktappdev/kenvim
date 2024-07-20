return { {
	"ktappdev/llm.nvim",
	dependencies = { "nvim-neotest/nvim-nio" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		-- -- How long to wait for the request to start returning data.
		timeout_ms = 10000,
		services = {
			-- Supported services configured by default
			groq = {
				url = "https://api.groq.com/openai/v1/chat/completions",
				model = "llama3-70b-8192",
				api_key_name = "GROQ_API_KEY",
			},
			-- openai = {
			--     url = "https://api.openai.com/v1/chat/completions",
			--     model = "gpt-4o",
			--     api_key_name = "OPENAI_API_KEY",
			-- },
			-- anthropic = {
			--     url = "https://api.anthropic.com/v1/messages",
			--     model = "claude-3-5-sonnet-20240620",
			--     api_key_name = "ANTHROPIC_API_KEY",
			-- },

			-- Extra OpenAI-compatible services to add (optional)
			-- other_provider = {
			--     url = "https://example.com/other-provider/v1/chat/completions",
			--     model = "llama3",
			--     api_key_name = "OTHER_PROVIDER_API_KEY",
			-- }
		}
	},
}
}
