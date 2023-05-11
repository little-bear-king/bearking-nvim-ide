local M = {
  "geg2102/nvim-python-repl"
}


function M.config()
  require("nvim-python-repl").setup({
    execute_on_send=false,
    vsplit=false,
    spawn_command={
      python="ipython",
      scala="sbt console",
      lua="ilua",
    }
})
end

return M

