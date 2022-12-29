
-- Functional wrapper for mapping custom keybindings
--[[ 
**Mode**
  normal_mode = "n",
  insert_mode = "i",
  visual_mode = "v",
  visual_block_mode = "x",
  term_mode = "t" command_mode = "c",
  lhs (the custom keybinds you need)
  rhs (the commands or existing keybinds to customise)
  opts (additional options like <silent>/<noremap>, see :h map-arguments for more info on it)
]]
function Keymap(mode, lhs, rhs, opts )
    local options = { noremap = true , silent = false }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)

end
-- local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
-- local keymap = vim.api.nvim_set_keymap
-- local keymap = vim.keymap.set

--Remap space as leader key
Keymap("", "<Space>", "<Nop>" )  -- make sure spacebar doesn't have any mapping beforehand:
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- key change  command mode   
Keymap("n",';',':')
Keymap("v",';',':')

-- Save buffer  
Keymap("n","<C-s>","<cmd>w!<CR>")
Keymap("v","<C-s>","<cmd>w!<CR>")
Keymap("v","<C-s>","<cmd>w!<CR>")

-- Better window navigation 
Keymap("n", "<C-h>", "<C-w>h"  )
Keymap("n", "<C-j>", "<C-w>j" )
Keymap("n", "<C-k>", "<C-w>k" )
Keymap("n", "<C-l>", "<C-w>l" )

-- Resize with arrows
Keymap("n", "<C-Up>", ":resize -2<CR>" )
Keymap("n", "<C-Down>", ":resize +2<CR>" )
Keymap("n", "<C-Left>", ":vertical resize -2<CR>" )
Keymap("n", "<C-Right>", ":vertical resize +2<CR>" )

-- Navigate buffers
Keymap("n", "<S-l>", ":bnext<CR>" )
Keymap("n", "<S-h>", ":bprevious<CR>" )

-- Move text up and down
Keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi" )
Keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi" )
Keymap("v", "<A-j>", ":m .+1<CR>==" )
Keymap("v", "<A-k>", ":m .-2<CR>==" )
Keymap("v", "p", '"_dP' )
Keymap("x", "J", ":move '>+1<CR>gv-gv" )
Keymap("x", "K", ":move '<-2<CR>gv-gv" )
Keymap("x", "<A-j>", ":move '>+1<CR>gv-gv" )
Keymap("x", "<A-k>", ":move '<-2<CR>gv-gv" )

-- Press jk fast to exit insert mode 
Keymap("i", "jk", "<ESC>" )

-- pasting  last yank  after delete line 
Keymap("n","pp", '"0p')
-- Stay in indent mode
Keymap("v", "<", "<gv" )
Keymap("v", ">", ">gv" )


-- Comment
Keymap("n", "<C-_>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>")
Keymap("i", "<C-_>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>")
Keymap("x", "<c-_>", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
Keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
Keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
Keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>")
Keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>")
Keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>")
Keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
Keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
Keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>")
Keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>")
-- Terminal --
-- Better terminal navigation
-- Keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", )
-- Keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", )
-- Keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", )
-- Keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", )

