lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
  -- specify snippet engine
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnip` users.
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
      { name = 'ultisnips' }, -- For vsnip users.
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
EOF
