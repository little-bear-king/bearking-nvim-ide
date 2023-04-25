local M = {
    "savq/melange-nvim",
    lazy = false,
    priority = 1000,
}
M.name = 'melange'
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
