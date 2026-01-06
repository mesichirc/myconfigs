vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true
vim.o.ignorecase = true
vim.o.swapfile = false
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.undofile = true
vim.o.incsearch = true
vim.o.winborder = "rounded"
vim.opt.expandtab = true
vim.o.scrolloff = 10
vim.o.sidescrolloff = 8

local TAB_WIDTH = 2
--vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = TAB_WIDTH
vim.opt.softtabstop = TAB_WIDTH
vim.opt.shiftwidth = TAB_WIDTH

vim.opt.hlsearch = false
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.cmd("set cinoptions=:0,l1,g0,(0,W4,m1")
vim.opt.termguicolors = true

vim.pack.add({
	{ src = "https://github.com/shaunsingh/nord.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

require "mini.pick".setup()
require "oil".setup()

vim.keymap.set('n', '<leader>f', ":Pick files<CR>")

vim.lsp.enable({ "lua_ls", "clangd" })

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true)
			}
		}
	}
})

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>h', ":Pick help<CR>")
vim.keymap.set('n', '<leader>gd', ":tjump")
vim.keymap.set('n', '<leader>ps', ":Pick grep<CR>")

vim.cmd("colorscheme nord")
vim.cmd(":hi statusline guibg=NONE")
vim.cmd(":set background=dark")
vim.keymap.set('n', '<leader>e', ":Oil<CR>")
vim.keymap.set('n', '<leader>br', ":!sh ./make.sh build_linux_and_run<CR>")

vim.keymap.set("n", "[d", function () return vim.diagnostic.jump({count=1, float=true}) end )
vim.keymap.set("n", "]d", function () return vim.diagnostic.jump({count=-1, float=true}) end )
