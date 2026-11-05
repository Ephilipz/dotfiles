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
ZSH_HIGHLIGHT_STYLES[command]='fg=#9ccfd8,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#9ccfd8,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#9ccfd8,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=#9ccfd8,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#31748f,bold'

# Arguments and options
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#31748f'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#31748f'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#9ccfd8'

# Paths and files
ZSH_HIGHLIGHT_STYLES[path]='fg=#c4a7e7,underline'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#c4a7e7,underline'

# Strings and quotes
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#f6c177'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#f6c177'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#f6c177'

# Variables
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#ebbcba'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#ebbcba'

# Errors
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#eb6f92,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#f6c177,bold'

# Redirections
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#31748f,bold'

# Globbing
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#ebbcba,bold'

# Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#6e6a86'
