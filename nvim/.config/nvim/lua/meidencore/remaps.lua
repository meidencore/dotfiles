-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Explorer remap
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iew (Open Explorer)" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set(
	"n",
	"<leader>Q",
	vim.diagnostic.setloclist,
	{ desc = "Open diagnostic [Q]uickfix on an independent loclist" }
)
vim.keymap.set("n", "<leader>of", vim.diagnostic.open_float, { desc = "[O]pen [F]loat" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- My Customs binds
-- Sourcing
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "[S]ource current file" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "[S]ource current line" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "[S]ource current selection" })

-- Move selecteds lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Dont move the cursor when append the next line
vim.keymap.set("n", "J", "mzJ`z")

-- Center when moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over selection and keep the pasted on the registry
--  to keep pasting and send deletion to void registry
vim.keymap.set("x", "<leader>p", '"_dP')

-- Yank to the clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "[Y]ank to the system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "[Y]ank to the system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "[Y]ank to the system clipboard" })

-- Delete to the void register
vim.keymap.set("n", "<leader><leader>d", '"_d', { desc = "[D]elete to void" })
vim.keymap.set("v", "<leader><leader>d", '"_d', { desc = "[D]elete to void" })

-- QuickFix Navigation
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<M-q>", "<cmd>cclose<CR>")
vim.keymap.set("n", "<M-o>", "<cmd>copen<CR>")
-- Loclist Navigation
vim.keymap.set("n", "<M-J>", "<cmd>lnext<CR>")
vim.keymap.set("n", "<M-K>", "<cmd>lprev<CR>")
vim.keymap.set("n", "<M-Q>", "<cmd>lclose<CR>")
