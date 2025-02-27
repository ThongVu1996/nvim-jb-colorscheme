local M = {}

M.options = {
  style = "dark",
  enable_italic = true,
  enable_unicode = false,
  colors = require("jb.palette").get_palette("dark")
}

function M.setup(opts)
  M.options = vim.tbl_extend("force", M.options, opts or {})
  vim.g.jb_config = M.options
end

return M

