local opt = vim.opt 

-- 1. Interface & UI 🖥️
opt.number = true             -- Show line numbers 
opt.relativenumber = true     -- Relative numbers for easier jumping 
opt.termguicolors = true      -- Enable 24-bit RGB color [cite: 764]
opt.cursorline = true         -- Highlight the current line [cite: 761]
opt.signcolumn = "yes"        -- Always show sign column (prevents text shift) 
opt.laststatus = 3            -- Global statusline (modern Nvim 0.8+ feature)
opt.scrolloff = 8

-- 2. Performance & Behavior ⚡
opt.undofile = true           -- Persistent undo history [cite: 764]
opt.undolevels = 10000        -- Increase undo steps [cite: 764]
opt.updatetime = 200          -- Faster completion and diagnostic updates [cite: 764]
opt.clipboard = "unnamedplus" -- Sync with system clipboard [cite: 761]
opt.mouse = "a"               -- Enable mouse support
opt.confirm = true
opt.virtualedit = "block"
opt.timeoutlen = 300

-- 3. Tabs & Indentation 📏
opt.expandtab = true          -- Use spaces instead of tabs [cite: 761]
opt.shiftwidth = 4            -- Size of an indent 
opt.tabstop = 4               -- Number of spaces tabs count for 
opt.smartindent = true        -- Insert indents automatically 
opt.wrap = false

-- 4. Search 🔍
opt.ignorecase = true         -- Ignore case in search patterns [cite: 761]
opt.smartcase = true          -- Don't ignore case if search has capitals 
opt.inccommand = "nosplit"    -- Preview substitution incrementally

-- 5. Windows, split
opt.splitbelow = true
opt.splitright = true

-- 6. Disable backup
opt.autowrite = true
opt.backup = false
opt.writebackup = false
