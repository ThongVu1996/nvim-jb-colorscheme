# JB Colorscheme for Neovim

A JetBrains-inspired colorscheme for Neovim.

## Features
- Dark, Light, and Mid themes
- Supports 256-color terminals
- Italic and Unicode support

## Installation

### Lazy.nvim
```lua
{
  "ThongVu1996/nvim-jb-colorscheme",
  lazy = false,
  priority = 1000,
  config = function()
    require("jb").setup({
      style = "dark",
      enable_italic = true,
      enable_unicode = false,
    })
  end,
}

