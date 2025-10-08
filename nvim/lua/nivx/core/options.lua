-- ==============================
-- 🌐 General Behavior
-- ==============================

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- UI font / plugin globals
vim.g.have_nerd_font = true       -- true if terminal uses Nerd Font
vim.g.snacks_animate = true       -- enable Snacks plugin animations
vim.g.markdown_recommended_style = 0 -- disable markdown's default tab settings

-- Better colors and file handling
local opt = vim.opt
opt.termguicolors = true          -- enable true color
opt.fileencoding = "utf-8"        -- default file encoding
opt.confirm = true                -- prompt before quitting unsaved files
opt.autoread = true               -- auto reload file if changed outside
opt.autowrite = true              -- auto write before running commands
opt.autowriteall = true           -- auto write all modified buffers
opt.backup = false                -- disable backup files
opt.swapfile = false              -- disable swap files
opt.writebackup = false           -- disable write-backup
opt.undofile = true               -- persistent undo history
opt.undolevels = 10000             -- max undo steps

-- ==============================
-- 🖱️ UI & Appearance
-- ==============================

opt.number = true                 -- show line numbers
opt.relativenumber = true         -- relative line numbers
opt.cursorline = true             -- highlight current line
opt.linebreak = true              -- wrap lines at word boundaries
opt.scrolloff = 10                -- keep 10 lines above/below cursor
opt.sidescrolloff = 10            -- keep 10 columns beside cursor
opt.signcolumn = "yes"            -- always show sign column (e.g. git/diagnostic icons)
opt.laststatus = 3                -- global statusline
opt.ruler = false                 -- hide old ruler (statusline replaces it)
opt.showmode = false              -- don’t show mode (statusline handles it)
opt.list = true                   -- show invisible characters
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.fillchars = {                 -- custom symbols for folds/diff/end of buffer
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.pumblend = 10                 -- popup menu transparency
opt.pumheight = 10                -- max number of completion menu items
opt.hlsearch = true               -- highlight search results
opt.incsearch = true              -- show matches while typing
opt.conceallevel = 0              -- show all concealed text (like markdown backticks)
-- opt.foldcolumn = "1"              -- show fold column
opt.foldlevel = 99                -- open all folds by default
opt.foldmethod = "indent"         -- fold based on indentation
opt.foldtext = ""                 -- disable custom fold text
opt.winminwidth = 5               -- minimum window width
opt.smoothscroll = true           -- smooth scrolling
opt.jumpoptions = "view"          -- retain view after jumping

-- ==============================
-- 🧠 Editing Behavior
-- ==============================

opt.mouse = "a"                   -- enable mouse support
opt.wrap = true                   -- enable line wrapping
opt.breakindent = true            -- keep indent when wrapping
opt.smartindent = true            -- smart auto-indentation
opt.tabstop = 2                   -- number of spaces per tab
opt.shiftwidth = 2                -- number of spaces per indentation level
opt.shiftround = true             -- round indent to nearest multiple of shiftwidth
opt.expandtab = true              -- use spaces instead of tabs
opt.virtualedit = "block"         -- allow block selection past line end
opt.completeopt = "menu,menuone,noselect" -- better completion experience
opt.shortmess:append({ W = true, I = true, c = true, C = true }) -- reduce message noise

-- ==============================
-- 🔍 Search & Navigation
-- ==============================

opt.ignorecase = true             -- ignore case in search
opt.smartcase = true              -- override ignorecase if search has capitals
opt.inccommand = "nosplit"        -- live preview substitutions
opt.grepformat = "%f:%l:%c:%m"    -- grep result format
opt.grepprg = "rg --vimgrep"      -- use ripgrep for :grep

-- ==============================
-- 🪟 Windows & Splits
-- ==============================

opt.splitright = true             -- vertical split opens to the right
opt.splitbelow = true             -- horizontal split opens below
opt.splitkeep = "screen"          -- keep text stable when splitting

-- ==============================
-- 🧾 Session Management
-- ==============================

opt.sessionoptions = {
  "buffers",                      -- restore opened buffers
  "curdir",                       -- restore working directory
  "tabpages",                     -- restore tabs
  "winsize",                      -- restore window sizes
  "help",                         -- restore help windows
  "globals",                      -- restore global variables
  "skiprtp",                      -- don’t store runtimepath
  "folds",                        -- restore folds
}

-- ==============================
-- ⚡ Performance & Timing
-- ==============================

opt.updatetime = 200              -- faster cursor-hold and diagnostics
opt.timeoutlen = 300              -- shorter key-sequence timeout

-- ==============================
-- 📚 Spell Checking
-- ==============================

opt.spelllang = { "en", "vi", "la" } -- spell-check languages

-- ==============================
-- 🪄 Clipboard Integration
-- ==============================

vim.schedule(function()
  -- don’t use system clipboard if in SSH session (OSC52 handles it)
  opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
end)

-- ==============================
-- 🧩 Command-line Completion
-- ==============================

opt.wildmode = "longest:full,full" -- command-line completion behavior
