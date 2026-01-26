return {
  'hrsh7th/nvim-cmp',
  event = { 'InsertEnter', 'CmdlineEnter' }, -- Lazy load on these events
  dependencies = {
    'L3MON4D3/LuaSnip',          -- Required snippet engine
    'saadparwaiz1/cmp_luasnip',  -- Snippet source for nvim-cmp
    'hrsh7th/cmp-nvim-lsp',      -- LSP source
    'hrsh7th/cmp-buffer',        -- Buffer words source
    'hrsh7th/cmp-path',          -- File system path source
  },
  config = function()
    -- Your nvim-cmp setup code goes here
    local cmp = require('cmp')
    local luasnip = require('luasnip')

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        -- Customize your key mappings here, e.g.,
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept completion
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
      }),
    })
  end,
}
