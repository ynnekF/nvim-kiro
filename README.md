# nvim-kiro

A Neovim plugin that integrates [kiro-cli](https://github.com/aws/kiro-cli) chat functionality directly into your editor with automatic context passing.
- Simple, fun project to learn neovim plugins and improve dev. workflows
- Assumes working `kiro-cli` tool. Simply integrates your working cli tool with neovim.

## Roadmap

- [x] Floating window support
- [ ] Shift+Enter for multiline messages
- [ ] Auto-completion integration
- [ ] Custom context formatters
- [ ] Configurable keybindings

## File Structure

```
nvim-kiro-plugin/
├── lua/
│   └── nvim-kiro/
│       ├── init.lua      # Core module with setup
│       ├── chat.lua      # Chat buffer management
│       ├── context.lua   # Context extraction
│       └── reload.lua    # File reload handling
├── plugin/
│   └── nvim-kiro.lua     # Command registration
├── doc/
│   └── nvim-kiro.txt     # Help documentation
├── README.md             # User documentation
└── plan.md               # Implementation plan
```

## Requirements

- Neovim >= 0.8.0
- [kiro-cli](https://github.com/aws/kiro-cli) installed and available in PATH

## Installation
TODO: Still figuring out how to make this a real plugin.

### lazy.nvim

```lua
{
  'nvim-kiro',
  dir = '~/path/to/nvim-kiro-plugin',
  dev = true,
  opts = {}
}
```

### vim-plug

```vim
Plug '~/path/to/nvim-kiro-plugin'
```

Then in your config:

```lua
require('nvim-kiro').setup()
```

### Manual

Add to your `init.lua`:

```lua
vim.opt.runtimepath:append('~/path/to/nvim-kiro-plugin')
require('nvim-kiro').setup()
```

## Usage

### Commands

- `:KiroChat` - Toggle the kiro-cli chat window

### How It Works

1. Open the chat with `:KiroChat`
2. Type your message in the terminal buffer
3. Press `<CR>` (Enter) to send
4. Your message is automatically prefixed with context:
   ```
   Context: file=lua/nvim-kiro/init.lua line=42 root=/home/user/project
   Your message here
   ```

### TODO File Reload Behavior

When kiro-cli modifies a file you have open:

- **No unsaved changes**: File reloads automatically
- **Unsaved changes**: You get a prompt with options:
  - `[L]oad` - Discard your changes, load kiro's version
  - `[O]K` - Keep your changes, ignore kiro's version
  - `[D]iff` - Open a diff view to manually merge changes

## Configuration

```lua
require('nvim-kiro').setup({
  window_type = 'split',  -- 'split' or 'float'
})
```

### Available Options

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `window_type` | string | `'split'` | Window type: `'split'` for vertical split, `'float'` for centered floating window |

### Window Types

**Split Window** (default):
- Opens as a vertical split on the right side
- Stays visible alongside your code
- Good for continuous interaction

**Floating Window**:
- Opens as a centered floating window (80% of screen size)
- Rounded borders with title
- Press `q` in normal mode to close
- Good for focused chat sessions

## Troubleshooting

### kiro-cli not found

Ensure kiro-cli is installed and in your PATH:

```bash
which kiro-cli
```

## Development

To develop this plugin locally:

1. Clone the repository
2. Add to your Neovim config with `dev = true`:
   ```lua
   {
     dir = '~/path/to/nvim-kiro-plugin',
     dev = true,
     opts = {}
   }
   ```
3. Make changes and restart Neovim to test

## License

MIT

## Contributing

Contributions welcome! Please open an issue or PR.
