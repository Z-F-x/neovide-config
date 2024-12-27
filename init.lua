vim.g.neovide_floating_blur_amount_y = 0.6

-- Set winblend for floating windows (like terminal, etc.)
vim.o.winblend = 20 -- Floating windows transparency

-- Set pumblend for popup menus (e.g., completion popup)
vim.o.pumblend = 20 -- Popup menu transparency

-- Make floating window NormalFloat transparent
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", blend = 20 }) -- Floating window transparency

-- Set transparency for message popups (MsgArea)
vim.api.nvim_set_hl(0, "MsgArea", { bg = "none", blend = 20 }) -- Message area transparency

-- Set transparency for command-line popups
vim.api.nvim_set_hl(0, "Cmdline", { bg = "none", blend = 20 }) -- Cmdline area transparency

-- Set transparency for the Pmenu (completion popup)
vim.api.nvim_set_hl(0, "Pmenu", { bg = "none", blend = 20 }) -- Popup menu transparency
vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "Floating", { bg = "#1e1e1e", blend = 30 })

if vim.g.neovide then
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e1e", blend = 30 })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e1e", blend = 30 })
  vim.o.pumblend = 60
  vim.o.winblend = 60

  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e1e", blend = 60 }) -- Adjust blend as needed
end

-- Floating window with transparent background
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5

vim.g.neovide_hide_mouse_when_typing = false
vim.g.neovide_floating_corner_radius = 9.0
vim.o.guifont = "Source Code Pro:h14" -- text below applies for VimScript
vim.g.neovide_cursor_vfx_mode = ""
vim.g.neovide_cursor_unfocused_outline_width = 0.125
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_refresh_rate = 144
vim.g.neovide_text_gamma = 0.0
vim.g.neovide_text_contrast = 0.5
vim.g.neovide_remember_window_size = true
vim.g.neovide_fullscreen = true
vim.g.neovide_refresh_rate_idle = 144

-- Ctrl + F to open search prompt
vim.keymap.set("n", "<C-f>", "/")
-- Ctrl + F in insert mode to start search
vim.keymap.set("i", "<C-f>", "<Esc>/")
-- Use Ctrl + A to select all text
vim.keymap.set("n", "<C-a>", "ggVG")
-- Map Ctrl + S to save the file in Normal mode
vim.keymap.set("n", "<C-s>", ":w<CR>")
-- Map Ctrl + S to save the file in Insert mode with a confirmation message
vim.keymap.set("i", "<C-s>", '<Esc>:w<CR>:echo "File Saved"<CR>')

-- Use system clipboard for copy and paste
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("i", "<C-v>", '<C-O>"+p')

-- Map Ctrl + Shift + C to copy to clipboard
vim.keymap.set("n", "<C-S-c>", '"+y')

-- Map Ctrl + Shift + V to paste from clipboard
vim.keymap.set("n", "<C-S-v>", '"+p')

-- Move selected lines up with Ctrl+Alt+Up in visual mode
vim.keymap.set("v", "<C-A-Up>", ":move '<-2<CR>gv")

-- Move selected lines down with Ctrl+Alt+Down in visual mode
vim.keymap.set("v", "<C-A-Down>", ":move '>+1<CR>gv")

-- Move to the end of the current line with Shift + D
vim.keymap.set("n", "<S-d>", "$")

-- Move to the last line of the file with Meta + D
vim.keymap.set("n", "<S-d>", "G")

-- Move to the first column of the first line with Shift + E
vim.keymap.set("n", "<S-e>", "gg0")

-- Shift + A: Move cursor to the beginning of the line -  In Visual Mode
vim.keymap.set("v", "<S-a>", "<C-o>0")

-- Shift + S: Move cursor to the end of the line - in Visual Mode
vim.keymap.set("v", "<S-s>", "<C-o>$")

-- Shift + A: Move cursor to the beginning of line - In Normal Mode
vim.keymap.set("n", "<S-a>", "0")

-- Shift + S: Move cursor to the end of the line - In Normal Mode
vim.keymap.set("n", "<S-s>", "$")

-- Move half page up with Shift + D in Normal Mode
vim.keymap.set("n", "<S-d>", "<C-U>")

-- Move half page up with Shift + D in Visual Mode
vim.keymap.set("v", "<S-d>", "<C-o><C-U>")

-- Alt + Left Arrow: Move the cursor to the beginning of the line
vim.keymap.set("n", "<A-Left>", "0")

-- Alt + Right Arrow: Move the cursor to the end of the line
vim.keymap.set("n", "<A-Right>", "$")

-- Alt + Up Arrow: Move the cursor to the beginning of the first line (top of the file)
vim.keymap.set("n", "<A-Up>", "gg")

-- Alt + Down Arrow: Move the cursor to the end of the last line (bottom of the file)
vim.keymap.set("n", "<A-Down>", "G")

-- In Insert Mode: Temporarily switch to Normal mode (with Ctrl + o)
vim.keymap.set("i", "<A-Left>", "<C-o>0")
vim.keymap.set("i", "<A-Right>", "<C-o>$")
vim.keymap.set("i", "<A-Up>", "<C-o>gg")
vim.keymap.set("i", "<A-Down>", "<C-o>G")

-- In Visual Mode: Temporarily switch to Normal mode (with Ctrl + o)
vim.keymap.set("v", "<A-Left>", "<C-o>0")
vim.keymap.set("v", "<A-Right>", "<C-o>$")
vim.keymap.set("v", "<A-Up>", "<C-o>gg")
vim.keymap.set("v", "<A-Down>", "<C-o>G")

-- In Normal Mode: Move to the middle of the file
vim.keymap.set("n", "<A-S-Right>", ':execute "normal! " . (line(\'$\') / 2) . "gg"<CR>')

-- In Insert Mode: Temporarily switch to Normal mode (with Ctrl + o) and move to the middle of the file
vim.keymap.set("i", "<A-S-Right>", '<C-o>:execute "normal! " . (line(\'$\') / 2) . "gg"<CR>')

-- In Visual Mode: Temporarily switch to Normal mode (with Ctrl + o) and move to the middle of the file
vim.keymap.set("v", "<A-S-Right>", '<C-o>:execute "normal! " . (line(\'$\') / 2) . "gg"<CR>')

-- In Normal Mode: Move to the middle of the first half of the file
vim.keymap.set("n", "<A-S-Up>", ':execute "normal! " . (line(\'$\') / 4) . "gg"<CR>')

-- Move to the middle of the bottom half of the file
vim.keymap.set("n", "<A-S-Down>", ':execute "normal! " . (line(\'$\') * 3 / 4) . "gg"<CR>')

-- In Insert Mode: Temporarily switch to Normal mode (with Ctrl + o) and move to the middle of the first half of the file
vim.keymap.set("i", "<A-S-Up>", '<C-o>:execute "normal! " . (line(\'$\') / 4) . "gg"<CR>')

-- Move to the middle of the bottom half of the file
vim.keymap.set("i", "<A-S-Down>", '<C-o>:execute "normal! " . (line(\'$\') * 3 / 4) . "gg"<CR>')

-- In Visual Mode: Temporarily switch to Normal mode (with Ctrl + o) and move to the middle of the first half of the file
vim.keymap.set("v", "<A-S-Up>", '<C-o>:execute "normal! " . (line(\'$\') / 4) . "gg"<CR>')

-- Move to the middle of the bottom half of the file
vim.keymap.set("v", "<A-S-Down>", '<C-o>:execute "normal! " . (line(\'$\') * 3 / 4) . "gg"<CR>')
