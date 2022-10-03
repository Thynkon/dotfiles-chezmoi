local telescope = require("telescope")

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      -- JS
      "node_modules",
      -- PHP
      "vendor",
      -- Elixir
      "deps",
      "_build"
    }
  }
}
