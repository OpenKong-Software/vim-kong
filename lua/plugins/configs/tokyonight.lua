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
