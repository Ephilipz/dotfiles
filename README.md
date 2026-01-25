# Dotfiles

Personal configuration files for zsh, neovim, zellij, and other tools.

## Structure

```
.
├── .zshenv              # Environment variables, XDG paths
├── .p10k.zsh            # Powerlevel10k prompt config
├── .bashrc              # Bash configuration
├── .profile             # Shell profile
└── .config/
    ├── aliases/         # Shell aliases (git, zellij, etc.)
    ├── lazygit/         # Lazygit configuration
    ├── nvim/            # Neovim configuration (kickstart-based)
    ├── zellij/          # Zellij terminal multiplexer config
    │   └── layouts/     # Custom zellij layouts
    └── zsh/             # Zsh configuration
        ├── .zshrc       # Main zsh config
        ├── completions.zsh
        ├── cursor.zsh
        ├── syntax-highlighting.zsh
        ├── widgets.zsh
        └── prompt/      # Custom prompt setup
```

## Installation

### Using GNU Stow (Recommended)

```bash
# Clone to home directory
cd ~
git clone https://github.com/Ephilipz/dotfiles.git

# Use stow to symlink (from dotfiles directory)
cd dotfiles
stow .
```

### Manual Installation

```bash
# Clone and copy files
git clone https://github.com/Ephilipz/dotfiles.git /tmp/dotfiles
cp /tmp/dotfiles/.zshenv ~/
cp /tmp/dotfiles/.p10k.zsh ~/
cp -r /tmp/dotfiles/.config/* ~/.config/
```

## Dependencies

- **zsh** with [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- **zsh-syntax-highlighting** (install to `~/.config/zsh/zsh-syntax-highlighting`)
- **neovim** (>= 0.9)
- **zellij** terminal multiplexer
- **lazygit** git TUI
