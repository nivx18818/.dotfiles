local map = vim.keymap.set

-- Move Lines
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move Down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move Up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move Up" })

-- Clear search highlight on escape
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- Better void register
map({ "n", "x" }, "_", '"_')

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- NORMAL MODE: keep cursor in place after search
map("n", "*", "*N", { silent = true }) -- highlight word under cursor, stay on it
map("n", "#", "#N", { silent = true }) -- same for backwards search

-- VISUAL MODE: search for selection and reselect
map("v", "*", '"vy/<C-r>v<CR>gv', { silent = true }) -- search forward for visual selection, reselect it
map("v", "#", '"vy?<C-r>v<CR>gv', { silent = true }) -- search backward for visual selection, reselect it

-- Go to Definition
map("n", "gr", function() vim.fn.VSCodeNotify("editor.action.goToReferences") end, { silent = true })

-- Yank from first to last non-blank character
map("n", "Y", "^yg_");

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Commenting
map("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
map("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })
