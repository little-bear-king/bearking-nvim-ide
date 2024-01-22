local M = {
  "nvim-treesitter/nvim-treesitter",
  -- commit = "226c1475a46a2ef6d840af9caa0117a439465500",
  event = "BufReadPost",
  dependencies = {
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy",
      -- commit = "0568104bf8d0c3ab16395433fcc5c1638efc25d4"
    },
  },
}
function M.config()
  -- local treesitter = require "nvim-treesitter"
  local configs = require "nvim-treesitter.configs"
  vim.g.skip_ts_context_commentstring_module = true

  configs.setup {
    ensure_installed = { "vim", "lua", "markdown", "markdown_inline", "bash", "python", "c", "cmake" }, -- put the language you want in this array
    -- ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" },                                                       -- List of parsers to ignore installing
    sync_install = false,                                                          -- install languages synchronously (only applied to `ensure_installed`)

    context_commentstring =require("ts_context_commentstring").setup {},

    highlight = {
      enable = true,       -- false will disable the whole extension
      disable = { "css" }, -- list of language that will be disabled
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true, disable = { "python", "css" } },
    
    -- context_commentstring = {
    --   enable = true,
    --   enable_autocmd = true,
    -- },
  }
end

return M
