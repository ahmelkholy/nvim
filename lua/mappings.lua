-- ~/.config/nvim/lua/custom/mappings.lua

-- Load default nvChad mappings
require "nvchad.mappings"

-- Your custom mappings

local map = vim.keymap.set

-- Map ";" to ":" for easier command entry
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Disable default Ctrl+D mapping

-- Map j to gj and k to gk for soft wrapping
map('n', 'j', 'gj', { desc = 'Move down by display line' })
map('n', 'k', 'gk', { desc = 'Move up by display line' })

-- Custom mapping with remap option
map('n', 'mcw', '<C-d>', { remap = true, desc = 'Custom mapping for Ctrl+D' })
