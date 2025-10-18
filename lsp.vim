lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

   cmp.setup({
  -- specify snippet engine
     snippet = {
       expand = function(args)
         require('luasnip').lsp_expand(args.body)
       end,
     },
     window = {
       completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered(),
     },
     mapping = cmp.mapping.preset.insert({
       ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept suggestion only on selection
     }),
     -- completion sources
     sources = cmp.config.sources({
       { name = 'nvim_lsp' },
       { name = 'luasnip' }, -- For vsnip users.
     }, {
       { name = 'buffer' },
     })
   })


  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  vim.lsp.config("texlab", {
    capabilities = capabilities,
  })
  
  vim.lsp.config("julials", {})
  
  vim.lsp.config("bashls", {
    capabilities = capabilities,
  })
  
  vim.lsp.config("lua_ls", {})
  
  vim.lsp.config("pylsp", {
    -- some useful plugins: pyflakes, python-lsp-ruff
  })
  
  vim.lsp.config("tinymist", {
    settings = {
      formatterMode = "typstyle",
      exportPdf = "never",
      semanticTokens = "disable",
    },
  })
  
  vim.lsp.config("zls", {})
  vim.lsp.config("gopls", {})
  
  -- Enable all
  vim.lsp.enable({
    "texlab",
    "julials",
    "bashls",
    "lua_ls",
    "pylsp",
    "tinymist",
    "zls",
    "gopls",
  })

  local lspconfig = require'lspconfig'
  local function custom_on_attach(client)
    print('Attaching to ' .. client.name)
    cmp.on_attach(client)
  end
  local default_config = {
    on_attach = custom_on_attach,
  }
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
  	underline = true,
  	virtual_text = true,
  	signs = true,
  	update_in_insert = true,
    }
  )

  require("luasnip").config.set_config({ -- Setting LuaSnip config
  enable_autosnippets = true,
  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
  })
  require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

  local ls = require("luasnip")
  local s = ls.snippet
EOF
