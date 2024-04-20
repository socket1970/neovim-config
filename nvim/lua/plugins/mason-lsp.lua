require("mason-lspconfig").setup {
	-- All configs for LSP - lua/lsp.lua
    ensure_installed = {
						-- Basic langiage:
						"clangd", -- C/C++.
						--"csharp_ls", -- C#
						--"fortls", -- Fortran.
						--"golangci_lint_ls", -- Golang.
						--"asm_lsp", -- Assembler[NASM, FASM].
						"pyright", -- Python.
						--
						-- Web:
						--"cssls", -- CSS.
						--"quick_lint_js", -- JavaScript.
						-- "psalm", -- PHP.
						--
						-- Automation builds and simular:
						--"autotools-language-server", -- Make.
						--"cmake", -- Cmake.
						-- "ninja", -- Ninja, does not exist.
						--
						-- Other languages:
						"lua_ls", -- Lua.
		       },
    automatic_installation = true,
}
