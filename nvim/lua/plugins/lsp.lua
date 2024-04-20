local lspconfig = require('lspconfig')

local bufopts = { noremap = true, silent = true, buffer = bufnr }

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, bufopts)
----------------------------------------
----------------Basic-------------------
----------------------------------------
--
----------------C/C++-------------------
lspconfig.clangd.setup{
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
}

---------------Fortran------------------
-- lspconfig.fortls.setup{
-- 	filetypes = { "fortran", "f90" },
-- }

---------------GoLang-------------------
-- lspconfig.golangci_lint_ls.setup{
-- 	filetypes = { "go", "gomod" },
-- }

-------------Assembler------------------
-- lspconfig.asm_lsp.setup{
-- 	filetypes = { "asm", "vmasm" },
-- }

-------------Python---------------------
lspconfig.pyright.setup {}

----------------------------------------
----------------Web---------------------
----------------------------------------
--
----------------HTML--------------------
--Enable (broadcasting) snippet capability for completion
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- lspconfig.html.setup {
--   capabilities = capabilities,
-- }

----------------CSS---------------------
-- lspconfig.cssls.setup {
--   capabilities = capabilities,
-- }

----------------------------------------
-----Automation builds and simular------
----------------------------------------
--
----------------Make--------------------
-- lspconfig.autotools_ls.setup{
-- 	filetypes = { "config", "automake", "make" },
-- }

----------------Cmake-------------------
-- lspconfig.cmake.setup{}

----------------------------------------
-----------Other languages--------------
----------------------------------------
--
-----------------Lua--------------------
lspconfig.lua_ls.setup {
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT'
          },
          -- Make the server aware of Neovim runtime files
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
              -- "${3rd}/luv/library"
              -- "${3rd}/busted/library",
            }
            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
            -- library = vim.api.nvim_get_runtime_file("", true)
          }
        }
      })

      client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    end
    return true
  end
}

