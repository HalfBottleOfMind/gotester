# Gotester

Gotester is small Neovim plugin for automatic running go tests on buffer write.

**I do not recommend to use this plugin. It was created only to learn how to create Neovim plugins. Use [vim-go](https://github.com/fatih/vim-go/) instead.**

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
