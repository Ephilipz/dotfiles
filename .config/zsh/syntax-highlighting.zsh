# +--------------------+
# | SYNTAX HIGHLIGHTING |
# +--------------------+

# Load plugin
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Highlighter configuration
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Main highlighter styles
typeset -A ZSH_HIGHLIGHT_STYLES

# Commands
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=cyan,bold'

# Arguments and options
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=green'

# Paths and files
ZSH_HIGHLIGHT_STYLES[path]='fg=blue,underline'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=blue,underline'

# Strings and quotes
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=yellow'

# Variables
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[assign]='fg=magenta'

# Errors
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow,bold'

# Redirections
ZSH_HIGHLIGHT_STYLES[redirection]='fg=cyan,bold'

# Globbing
ZSH_HIGHLIGHT_STYLES[globbing]='fg=magenta,bold'

# Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=8'
