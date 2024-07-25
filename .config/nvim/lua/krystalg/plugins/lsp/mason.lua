return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				-- golang
				"gopls",

				-- python
				"pyright",

				-- c
				"clangd",

				-- javascript
				"tsserver",

				-- lua
				"lua_ls",

				-- misc
				"cssls",
				"html",
				"emmet_ls",
				"tailwindcss",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"goimports", -- go formatter to fix imports
				"gofumpt", -- go's standard formatter
				"golines", -- go formatter to fix long lins
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"eslint_d", -- js/ts lnter
				"pylint", -- python linter
				-- "golangci-lint", -- go linter
			},
		})
	end,
}
