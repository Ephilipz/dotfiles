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
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# +--------------------------------+
# | AUTOSUGGESTIONS / HISTORY SEARCH |
# +--------------------------------+
# Terminal.app is 256-colour only, so use a palette index (not hex) and a
# grey that is visible on dark and light profiles.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=200
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(forward-char end-of-line vi-forward-char vi-end-of-line vi-add-eol)
for _p in $HOME/homebrew /opt/homebrew; do
  [[ -r $_p/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source $_p/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  [[ -r $_p/share/zsh-history-substring-search/zsh-history-substring-search.zsh ]] && source $_p/share/zsh-history-substring-search/zsh-history-substring-search.zsh
done
unset _p

# Accept the suggestion with Ctrl-Y or Ctrl-J (insert + normal mode).
# Ctrl-J normally == Enter; Enter (^M) still runs the command.
# With no suggestion showing, Ctrl-J falls back to accept-line.
_accept_suggestion_or_line() {
  if [[ -n $POSTDISPLAY ]]; then zle autosuggest-accept; else zle accept-line; fi
}
zle -N _accept_suggestion_or_line
bindkey -M viins '^Y' autosuggest-accept
bindkey -M vicmd '^Y' autosuggest-accept
bindkey -M viins '^J' _accept_suggestion_or_line
bindkey -M vicmd '^J' _accept_suggestion_or_line
bindkey -M viins '^F' autosuggest-accept   # Ctrl-F as well

# History substring search
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M viins '^P' history-substring-search-up
bindkey -M viins '^N' history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

# Completion menu: Ctrl-Y accepts the highlighted entry, Ctrl-J/Ctrl-N/Ctrl-P move
bindkey -M menuselect '^Y' accept-line
bindkey -M menuselect '^N' down-line-or-history
bindkey -M menuselect '^P' up-line-or-history
bindkey -M viins '^[[Z' reverse-menu-complete   # Shift-Tab

# fzf (Ctrl-R, Ctrl-T, Alt-C)
(( $+commands[fzf] )) && source <(fzf --zsh)

# +--------------------+
# | SYNTAX HIGHLIGHTING |
# +--------------------+
# Must be sourced at the end of .zshrc
source $ZDOTDIR/syntax-highlighting.zsh
