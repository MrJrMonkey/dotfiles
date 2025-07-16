#custom zsh
[ -f "$HOME/.config/zsh/custom.zsh" ] && source "$HOME/.config/zsh/custom.zsh"

#alias
[ -f "$HOME/.config/zsh/alias.zsh" ] && source "$HOME/.config/zsh/alias.zsh"

#
#export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
#eval "$(starship init zsh)"


# History settings
#HISTSIZE=10000              # Number of commands kept in memory
#SAVEHIST=10000              # Number of commands saved to file
#HISTFILE=~/.zsh_history     # Where history is saved

# Append to history, don't overwrite
#setopt APPEND_HISTORY
#setopt INC_APPEND_HISTORY   # Write command to history immediately
#setopt SHARE_HISTORY        # Share history across sessions

# Optional: Avoid duplicates
#setopt HIST_IGNORE_ALL_DUPS

