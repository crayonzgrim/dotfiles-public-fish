local status, mason = pcall(require, "mason")
if not status then
  return
end

local status2, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status2 then
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

mason.setup(
-- {
-- ui = {
--   icons = {
--     package_installed = "✓",
--     package_pending = "➜",
--     package_uninstalled = "✗",
--   },
-- },
-- }
)

mason_lspconfig.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "sumneko_lua"
  },
  automatic_installation = true, -- not the same as ensure_installed
})

mason_lspconfig.setup_handlers({
  tsserver = function()
    require('typescript').setup({})
  end
})

mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "eslint_d",
  }
})
