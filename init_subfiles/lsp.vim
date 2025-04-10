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
  require('lspconfig')['texlab'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['bashls'].setup {
    capabilities = capabilities
  }  
  require'lspconfig'.pylsp.setup{} -- some useful plugins are pyflakes and python-lsp-ruff
  require("lspconfig")["tinymist"].setup {
  	settings = {
  		formatterMode = "typstyle",
  		exportPdf = "onType",
  		semanticTokens = "disable"
  	}
  }

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
  -- local sn = ls.snippet_node
  -- local t = ls.text_node
  -- local i = ls.insert_node
  -- local f = ls.function_node
  -- local d = ls.dynamic_node
  -- local fmt = require("luasnip.extras.fmt").fmt
  -- local fmta = require("luasnip.extras.fmt").fmta
  -- local rep = require("luasnip.extras").rep
EOF
