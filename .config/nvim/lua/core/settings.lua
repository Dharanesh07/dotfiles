-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

local g = vim.g       -- Global variables
local opt = vim.opt   

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------

opt.number = true           -- Show line number
opt.relativenumber = true
opt.showmatch = true        -- Highlight matching parenthesis
opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.termguicolors = true    -- Enable 24-bit RGB colors
opt.laststatus=3            -- Set global statusline
opt.ruler = true
opt.title = true
opt.cursorline = true
opt.showtabline = 2
opt.smartindent = true
opt.smartindent = true
opt.background = "dark"


-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------

opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines
opt.smarttab = true         -- Backspace should delete tab width of characters


-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
--opt.synmaxcol = 240         -- Max column for syntax highlight
--opt.updatetime = 250        -- ms to wait for trigger an event

-----------------------------------------------------------
-- Clipboard
-----------------------------------------------------------

opt.clipboard = "unnamedplus"

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
opt.shortmess:append "sI"


