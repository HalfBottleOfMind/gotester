# Gotester

Gotester is small Neovim plugin for automatic running go tests on buffer write.

## ⚡️ Requirements

- [vim-go](https://github.com/fatih/vim-go/)

## 📦 Installation

Install the plugin with your preferred package manager:

```lua
-- lazy.nvim
{
  "HalfBottleOfMind/gotester.nvim",
  event = "BufEnter *.go",
  dependencies = {
    "fatih/vim-go",
  }
}
```
