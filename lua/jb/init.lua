local M = {}

M.setup = function(opts)
  local config = require("jb.config")
  config.setup(opts)

  if vim.fn.has("termguicolors") == 1 then
    vim.opt.termguicolors = true
  end

  vim.defer_fn(function()
    pcall(vim.cmd, "colorscheme jb")
  end, 100)
end

return M
