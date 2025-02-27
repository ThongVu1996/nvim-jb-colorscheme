local palettes = {
  dark = {
    text = { gui = "#FFFFFF" },
    comment = { gui = "#6A9955" },
    string = { gui = "#CE9178" },
    number = { gui = "#B5CEA8" },
    keyword = { gui = "#C586C0" },
    ["function"] = { gui = "#DCDCAA" },
    const = { gui = "#4FC1FF" },
    type = { gui = "#569CD6" }
  }
}

local M = {}

M.get_palette = function(style)
  return palettes[style] or palettes.dark
end

return M
