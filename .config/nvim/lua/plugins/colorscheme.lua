
-- Colorscheme:
-- The colorscheme should be available when starting Neovim.

return {
  'navarasu/onedark.nvim',
  lazy = false,
  priority = 1000,

  config = function()
    -- Setup the colorscheme
    require('onedark').setup {
      -- styles: dark, darker, cool, deep, warm, warmer, light
      style = 'darker',
      --colors = { fg = '#b2bbcc' }, -- default: #a0a8b7
    }

    -- Load the colorscheme
    require('onedark').load()
  end,
}
