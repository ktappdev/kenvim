return {
  'goolord/alpha-nvim',
  enabled = true,
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local time = os.date '%H:%M'
    local date = os.date '%a %d %b'
    -- local v = vim.version()
    -- local version = ' v' .. v.major .. '.' .. v.minor .. '.' .. v.patch

    dashboard.section.header.val = {
      " __         __  __     ______     ______     ______   ______     ______     __  __    ",
      "/\\ \\       /\\ \\/\\ \\   /\\  ___\\   /\\  ___\\   /\\__  _\\ /\\  ___\\   /\\  ___\\   /\\ \\_\\ \\   ",
      "\\ \\ \\____  \\ \\ \\_\\ \\  \\ \\ \\__ \\  \\ \\  __\\   \\/_/\\ \\/ \\ \\  __\\   \\ \\ \\____  \\ \\  __ \\  ",
      " \\ \\_____\\  \\ \\_____\\  \\ \\_____\\  \\ \\_____\\    \\ \\_\\  \\ \\_____\\  \\ \\_____\\  \\ \\_\\ \\_\\ ",
      "  \\/_____/   \\/_____/   \\/_____/   \\/_____/     \\/_/   \\/_____/   \\/_____/   \\/_/\\/_/ ",
      "                                                                                      ",
      "                                                                                      " }

    dashboard.section.buttons.val = {
      -- dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
      -- dashboard.button("c", "   Configuration", ":e ~/.config/kenvim/init.lua<CR>"),
    }

    function centerText(text, width)
      local totalPadding = width - #text
      local leftPadding = math.floor(totalPadding / 2)
      local rightPadding = totalPadding - leftPadding
      return string.rep(' ', leftPadding) .. text .. string.rep(' ', rightPadding)
    end

    dashboard.section.footer.val = {
      centerText('LETS GO!', 50),
      ' ',
      -- centerText("NvimOnMy_Way❤️", 50),
      -- " ",
      centerText(date, 50),
      centerText(time, 50),
      -- centerText(version, 50),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
