local M = {}

M.setup = function(opts)
  local config = require("jb.config")
  config.setup(opts)

  if vim.fn.has("termguicolors") == 1 then
    vim.opt.termguicolors = true
  end

  vim.g.jb_style = config.options.style
  vim.g.jb_enable_italic = config.options.enable_italic and 1 or 0
  vim.g.jb_enable_unicode = config.options.enable_unicode and 1 or 0

  vim.schedule(function()
    vim.cmd("colorscheme jb")
  end)
end

return M
