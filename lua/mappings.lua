-- ~/.config/nvim/lua/custom/mappings.lua

-- Load default nvChad mappings
require "nvchad.mappings"

-- Your custom mappings

local map = vim.keymap.set

-- Map ";" to ":" for easier command entry
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Disable default Ctrl+D mapping
-- (Assuming you want to disable it, you can unmap it)
map("n", "<C-d>", "<Nop>", { desc = "Disable default Ctrl+D mapping" })

-- Map j to gj and k to gk for soft wrapping
map('n', 'j', 'gj', { desc = 'Move down by display line' })
map('n', 'k', 'gk', { desc = 'Move up by display line' })

-- Custom mapping with remap option
map('n', '<C-d>', 'mciw*<Cmd>nohl<CR>', { remap = true, desc = 'Custom delete word and highlight' })

-- Save file quickly
map('n', '<C-s>', ':w<CR>', { desc = 'Save file' })

-- Close current buffer
map('n', '<C-q>', ':bd<CR>', { desc = 'Close current buffer' })

-- Toggle file explorer
map('n', '<C-e>', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })