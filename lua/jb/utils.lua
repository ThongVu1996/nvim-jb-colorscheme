local M = {}

M.log = function(msg, level)
  level = level or "info"
  vim.notify("[vim-jb] " .. msg, vim.log.levels[level:upper()])
end

return M

