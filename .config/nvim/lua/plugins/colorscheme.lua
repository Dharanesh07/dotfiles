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
    style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    --toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    --toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
            comments = 'italic',
            keywords = 'none',
            functions = 'none',
            strings = 'none',
            variables = 'none'
    },
    -- Lualine options --
        lualine = {
        transparent = false, -- lualine center bar transparency
    },
      --colors = { bg = '#1b1b1b' }, -- default: #a0a8b7
    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
    }

    -- Load the colorscheme
    require('onedark').load()
  end,
}



--[[
return {
  'Mofiqul/vscode.nvim',
  lazy = false,
  priority = 1000,

  config = function()
    -- Setup the colorscheme
    require('vscode').setup {
      -- Available styles: 'light' or 'dark'
      style = 'dark',
      transparent = false,          -- Enable transparent background
      italic_comments = true,       -- Italicize comments for emphasis
      disable_nvimtree_bg = true,   -- Disable background color for nvim-tree
      -- Optional: override specific colors
      color_overrides = {
        vscLineNumber = '#FFFFFF', -- Example of customizing line number color
      },
    }

    -- Load the colorscheme
    require('vscode').load()
  end,
}
]]--
