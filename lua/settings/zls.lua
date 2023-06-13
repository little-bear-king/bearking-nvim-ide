return {
  settings = {
    cmd = {"zls.cmd"},
    filetypes = {"zig", "zir"},
    root_dir = util.root_pattern("zls.json", ".git"),
    single_file_support = true
  }
}
