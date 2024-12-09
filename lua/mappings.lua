-- ~/.config/nvim/lua/custom/mappings.lua

-- Load default nvChad mappings
require "nvchad.mappings"

-- Your custom mappings

local map = vim.keymap.set

-- Map ";" to ":" for easier command entry
map("n", ";", ":", { desc = "CMD enter command mode" })

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

local cursors = require('vscode-multi-cursor')

local k = vim.keymap.set
k({ 'n', 'x' }, 'mc', cursors.create_cursor, { expr = true, desc = 'Create cursor' })
k({ 'n' }, 'mcc', cursors.cancel, { desc = 'Cancel/Clear all cursors' })
k({ 'n', 'x' }, 'mi', cursors.start_left, { desc = 'Start cursors on the left' })
k({ 'n', 'x' }, 'mI', cursors.start_left_edge, { desc = 'Start cursors on the left edge' })
k({ 'n', 'x' }, 'ma', cursors.start_right, { desc = 'Start cursors on the right' })
k({ 'n', 'x' }, 'mA', cursors.start_right, { desc = 'Start cursors on the right' })
k({ 'n' }, '[mc', cursors.prev_cursor, { desc = 'Goto prev cursor' })
k({ 'n' }, ']mc', cursors.next_cursor, { desc = 'Goto next cursor' })
k({ 'n' }, 'mcs', cursors.flash_char, { desc = 'Create cursor using flash' })
k({ 'n' }, 'mcw', cursors.flash_word, { desc = 'Create selection using flash' })
