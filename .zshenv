export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History settings
export HISTFILE=$ZDOTDIR/.hist_zsh
export HISTSIZE=5000000
export SAVEHIST=$HISTSIZE

export COLORTERM='truecolor'
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'
export GOPATH=$HOME/.go/pkg/mod
export BUN_INSTALL="$HOME/.bun"
export DOTNET_ROOT="$HOME/.dotnet"

export NGROK_URL="https://trusted-national-mastodon.ngrok-free.app"

# path
[ -x "$HOME/homebrew/bin/brew" ] && eval "$("$HOME/homebrew/bin/brew" shellenv)"
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
path+=('/opt/nvim-linux-x86_64/bin')
path+=('/usr/local/bin')
path+=("$HOME/.local/bin")
path+=("$HOME/.asdf/shims")
path+=('/usr/local/go/bin')
path+=("$GOPATH/bin")
path+=("$DOTNET_ROOT")
path+=("$DOTNET_ROOT/tools")
path+=("$BUN_INSTALL/bin")

