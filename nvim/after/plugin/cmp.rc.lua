local status, cmp = pcall(require, "cmp")
if (not status) then return end

local lspkind = require 'lspkind'

local luasnip_status, luasnip = pcall(require, "luasnip")
if (not luasnip_status) then return end

require("luasnip.loaders.from_vscode").lazy_load()

luasnip.add_snippets('typescriptreact', {
  luasnip.snippet('log', {
    luasnip.text_node('console.log('),
    luasnip.text_node(')')
  })
})

luasnip.add_snippets('javascriptreact', {
  luasnip.snippet('log', {
    luasnip.text_node('console.log('),
    luasnip.text_node(')')
  })
})


cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }, -- lsp
    { name = 'buffer' }, -- text within current buffer
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50, ellipsis_char = "..." })
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
