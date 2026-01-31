<p align="center">
  <h1 align="center">nvim-kiro</h2>
</p>

<p align="center">
    > A Neovim plugin that integrates kiro-cli chat functionality directly into your editor with automatic "context passing"

</p>

## Overview

- Simple, fun project to learn neovim plugins and improve my workflow
- Assumes working `kiro-cli` tool. Simply integrates your working cli tool with neovim.

### Roadmap

- [ ] Auto-completion integration
- [ ] Custom context formatters
- [ ] Configurable keybindings + options
- [ ] Reload
    - **No unsaved changes**: File reloads automatically
    - **Unsaved changes**: You get a prompt with options:
    - `[L]oad` - Discard your changes, load kiro's version
    - `[O]K` - Keep your changes, ignore kiro's version
    - `[D]iff` - Open a diff view to manually merge changes

## Installation

### Requirements

- Neovim >= 0.8.0
- [kiro-cli](https://github.com/aws/kiro-cli) installed and available in PATH

<div align="center">
<table>
<thead>
<tr>
<th>Package manager</th>
<th>Snippet</th>
</tr>
</thead>
<tbody>
<tr>
<td>

Development
</td>
<td>

```lua
{
    dir = 'path/to/nvim-kiro-plugin',
    dev = true,
    opts = {}
}
```

</td>
</tr>
<tr>
<td>

[wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)

</td>
<td>

```lua
-- stable version
use {"nvim-kiro", tag = "*" }
-- dev version
use {"nvim-kiro"}
```

</td>
</tr>
<tr>
<td>

[junegunn/vim-plug](https://github.com/junegunn/vim-plug)

</td>
<td>

```lua
-- stable version
Plug "nvim-kiro", { "tag": "*" }
-- dev version
Plug "nvim-kiro"
```

</td>
</tr>
<tr>
<td>

[folke/lazy.nvim](https://github.com/folke/lazy.nvim)

</td>
<td>

```lua
-- stable version
require("lazy").setup({{"nvim-kiro", version = "*"}})
-- dev version
require("lazy").setup({"nvim-kiro"})
```

</td>
</tr>
</tbody>
</table>
</div>

## Configuration

<details>
<summary>Click to unfold the full list of options with their default values</summary>

> **Note**: The options are also available in Neovim by calling `:h nvim-kiro.options`

```lua
require("nvim-kiro").setup({
    -- you can copy the full list from lua/nvim-kiro/config.lua
})
```

</details>

## ⌨ Contributing

PRs and issues are always welcome. Make sure to provide as much context as possible when opening one.
