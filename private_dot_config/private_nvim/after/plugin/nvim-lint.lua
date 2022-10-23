local present, lint = pcall(require, "lint")

if not present then
  return
end

lint.linters_by_ft = {
  elixir = {"credo"},
  markdown = {"vale"},
  ruby = {"rubocop"}
}

-- Trigger linting
vim.api.nvim_create_autocmd(
  {"BufWritePost"},
  {
    callback = function()
      require("lint").try_lint()
    end
  }
)
