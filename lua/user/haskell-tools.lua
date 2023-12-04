local M = {
  'mrcjkb/haskell-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  branch = '2.x.x', -- Recommended
  ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
}


vim.g.haskell_tools = {
  tools = {
    -- ...
  },
  hls = {
    on_attach = function(client, bufnr, ht)
      -- Set keybindings, etc. here.

      local ht = require('haskell-tools')
      local bufnr = vim.api.nvim_get_current_buf()
      local def_opts = { noremap = true, silent = true, buffer = bufnr}
      -- vim.keymap.set('n', '<space>ca', vim.lsp.codelens.run, opts)
      -- -- Hoogle search for the type signature of the definition under the cursor
      -- vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
      -- -- Evaluate all code snippets
      -- vim.keymap.set('n', '<space>ea', ht.lsp.buf_eval_all, opts)
      -- -- Toggle a GHCi repl for the current package
      -- vim.keymap.set('n', '<leader>rr', ht.repl.toggle, opts)
      -- -- Toggle a GHCi repl for the current buffer
      -- vim.keymap.set('n', '<leader>rf', function()
      --   ht.repl.toggle(vim.api.nvim_buf_get_name(0))end, def_opts)
      -- vim.keymap.set('n', '<leader>rq', ht.repl.quit, opts)
    end,
    -- ...
  },
  dap = {
    -- ...
  },
}
  -- local ht = require('haskell-tools')
  -- local bufnr = vim.api.nvim_get_current_buf()
  -- local def_opts = { noremap = true, silent = true, buffer = bufnr, auto_attach = true,}

return M