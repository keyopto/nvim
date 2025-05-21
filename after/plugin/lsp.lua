require("neodev").setup({})

local cmp = require("cmp")
local luasnip = require("luasnip")
-- local lspkind = require("lspkind")

-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
require("luasnip.loaders.from_vscode").lazy_load()

vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
vim.keymap.set("n", "gi", require("telescope.builtin").lsp_implementations, {})

cmp.setup({
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },
  snippet = { -- configure how nvim-cmp interacts with snippet engine
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(),        -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" }, -- snippets
    { name = "buffer" },  -- text within current buffer
    { name = "path" },    -- file system paths
  }),

  -- configure lspkind for vs-code like pictograms in completion menu
  -- formatting = {
  --   format = lspkind.cmp_format({
  --     maxwidth = 50,
  --     ellipsis_char = "...",
  --   }),
  -- },
})

local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local function is_angular_project()
  local project_root = vim.fn.getcwd()
  return vim.fn.filereadable(project_root .. "/angular.json") == 1
end

require("mason").setup({})
require("mason-lspconfig").setup({
  automatic_installation = true,
  ensure_installed = {
    "rust_analyzer",
    "lua_ls",
    "ts_ls",
    "jdtls",
    "angularls",
    "gopls",
    "clangd",
  },
  handlers = {
    function(server)
      if server == "jdtls" then
        return
      end
      lspconfig[server].setup({
        capabilities = lsp_capabilities,
        inlayHints = {
          includeInlayEnumMemberValueHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
          includeInlayParameterNameHintsWhenArgumentMatchesName = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayVariableTypeHints = false,
        }
      })
    end,
    ["ts_ls"] = function()
      lspconfig.ts_ls.setup({
        capabilities = lsp_capabilities,
        settings = {
          completions = {
            completeFunctionCalls = true,
          },
          typescript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
              includeInlayParameterNameHintsWhenArgumentMatchesName = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayVariableTypeHints = false,
            },
          },
        },
      })
    end,
    ["angularls"] = function()
      if is_angular_project() then
        lspconfig.angularls.setup({
          capabilities = lsp_capabilities,
          filetypes = { "typescript", "html" },
          on_attach = function(client)
            -- else there are problems with tsserver
            client.server_capabilities.renameProvider = false
          end,
        })
      end
    end,
    ["lua_ls"] = function()
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            hint = { enable = true },             -- Enable hints in Lua
            diagnostics = { globals = { "vim" } } -- Prevent 'vim' undefined warnings
          }
        }
      })
    end,
    ["clangd"] = function()
      lspconfig.clangd.setup({
        capabilities = lsp_capabilities,
        init_options = {
          clangdFileStatus = true,
          fallbackFlags = { "-Wall", "-Wextra", "-Wpedantic" }
        },
        inlayHints = {
          includeInlayEnumMemberValueHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
          includeInlayParameterNameHintsWhenArgumentMatchesName = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayVariableTypeHints = false,
        }
      })
    end,
  },
})

require("mason-tool-installer").setup({
  ensure_installed = {
    "java-debug-adapter",
    "java-test",
  },
})

local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
