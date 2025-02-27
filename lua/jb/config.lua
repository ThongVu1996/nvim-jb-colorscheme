local M = {}

M.options = {
  style = "dark",
  enable_italic = true,
  enable_unicode = false,
  colors = {
    text = "#FFFFFF",
    link = "#569CD6",
    todo = "#FF0000",
    comment = "#6A9955",
    search = "#264F78",
    folded = "#3B3B3B",
    editor = "#1E1E1E",
    number = "#B5CEA8",
    string = "#CE9178",
    keyword = "#C586C0",
    ["function"] = "#DCDCAA",
    const = "#4FC1FF",
    type = "#569CD6",
    tag = "#D7BA7D",
    diffadd = "#587C0C",
    diffmod = "#0C7D9D",
    difftext = "#2F628E",
    diffdel = "#A31515"
  }
}

function M.setup(opts)
  M.options = vim.tbl_extend("force", M.options, opts or {})
  vim.g.jb_config = M.options
end

return M
