# HISTORY
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.
# END HISTORY

# alias
source $XDG_CONFIG_HOME/aliases/aliases

# completions
source $ZDOTDIR/completions.zsh

# +--------+
# | PROMPT |
# +--------+

fpath=($ZDOTDIR/prompt $fpath)
source $ZDOTDIR/prompt/prompt_setup

# +--------+
# | CURSOR |
# +--------+

source $ZDOTDIR/cursor.zsh

# +-----+
# | VIM |
# +-----+
bindkey -v
export KEYTIMEOUT=1

# +---------+
# | WIDGETS |
# +---------+
source $ZDOTDIR/widgets.zsh

# pnpm
export PNPM_HOME="/home/nolimit/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# +--------------------+
# | SYNTAX HIGHLIGHTING |
# +--------------------+
# Must be sourced at the end of .zshrc
source $ZDOTDIR/syntax-highlighting.zsh
