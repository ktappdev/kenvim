return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Recommended - see "Configuring" below for more config options
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
        terminal_colors = true,
        theme = {            -- Default: nil
          variant = "light", -- Default: "deafult" (dark)
          -- highlights = {
          --   -- Highlight groups to override, adding new groups is also possible
          --   -- See `:help highlight-groups` for a list of highlight groups
          --
          --   -- Example:
          --   Comment = { fg = "#696969", bg = "NONE", italic = true },
          --
          --   -- Complete list can be found in `lua/cyberdream/theme.lua`
          -- },
          --
          -- -- Override a color entirely
          -- colors = {
          --   -- For a list of colors see `lua/cyberdream/colours.lua`
          --   -- Example:
          --   bg = "#000000",
          --   green = "#00ff00",
          --   magenta = "#ff00ff",
          -- },
        },
      })
    end,
  }
}
