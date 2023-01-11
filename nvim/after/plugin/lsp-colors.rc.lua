local status, colors = pcall(require, "lsp-colors")
if (not status) then return end

colors.setup {
  Error = "#D10000", -- #FF2E2E #db4b4b, #D10000
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
}
