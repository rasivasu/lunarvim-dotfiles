-- keymappings [view all the defaults by pressing <leader>Lk]
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Shorten function name
local insert = lvim.keys.insert_mode
local normal = lvim.keys.normal_mode

-- Miscellaneous actions
insert["kj"] = "<ESC>"
normal["<C-s>"] = ":w<cr>"

-- hop.nvim
normal["<leader>m"] = ":HopWord<CR>"

-- Navigate buffers
normal["<S-l>"] = ":bnext<CR>"
normal["<S-h>"] = ":bprevious<CR>"

-- Navigate tabs
normal["<A-l>"]= ":tabnext<CR>"
normal["<A-h>"] = ":tabprevious<CR>"
