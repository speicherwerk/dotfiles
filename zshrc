# Editor should always be vim
export EDITOR=vim

# Path to iCloud on macOS
export ICLOUD=~/Library/Mobile\ Documents/com~apple~CloudDocs/

# If gmake exists, alias make to it (useful on macOS)
command -v gmake 2>&1 >/dev/null && alias make='gmake'

# Vim mode but preserve useful keybinds
bindkey -v
bindkey ^R history-incremental-search-backward
bindkey ^S history-incremental-search-forward
bindkey ^A beginning-of-line
bindkey ^E end-of-line
bindkey  '^?' backward-delete-char

# Quit shell like vim
alias :q='exit'

autoload -zU promptinit && promptinit
prompt adam1

