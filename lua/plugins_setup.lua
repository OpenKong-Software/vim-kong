require('neo-tree').setup({
  close_if_last_window = true,
  popup_border_style = 'rounded',
  enable_git_status = true,
  enable_diagnostics = true,
  default_component_configs = {
    indent = {
      indent_size = 2,
      padding = 1, -- extra padding on left hand side
      with_markers = true,
      indent_marker = '│',
      last_indent_marker = '└',
      highlight = 'NeoTreeIndentMarker',
    },
    icon = {
      folder_closed = '',
      folder_open = '',
      default = '',
    },
  },
  filesystem = {
    follow_current_file = true,
    use_libuv_file_watcher = true,
    filtered_items = {
      hide_dotfiles = false,
    },
    window = {
      position = 'left',
      mappings = {
        f = 'none',
      },
    },
  },
})

require("tokyonight").setup({
  style = "night",
  styles = {
    functions = {}
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})

vim.cmd [[colorscheme tokyonight]]
