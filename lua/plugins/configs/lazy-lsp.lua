require('lazy-lsp').setup {
  excluded_servers = {
    "ccls", "zk", "sqlls"
  },
  default_config = {
    flags = {
      debounce_text_changes = 150,
    },
  },
  configs = {
    lua_ls = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    },
  },
}
