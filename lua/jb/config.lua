local M = {}

M.options = {
  style = "dark", -- "dark", "light", "mid"
  enable_italic = true,
  enable_unicode = false,
}

function M.setup(opts)
  M.options = vim.tbl_extend("force", M.options, opts or {})
end

return M

