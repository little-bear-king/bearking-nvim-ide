return {
  require'lspconfig'.jedi_language_server.setup{
    cmd = "jedi-languager-server",
    filetypes = 'python',
    root = '/'
  }
}
