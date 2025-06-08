# Editor should always be vim
export EDITOR=vim

# If gmake exists, alias make to it (useful on macOS)
command -v gmake 2>&1 >/dev/null && alias make='gmake'

# Vim mode but preserve useful keybinds
bindkey -v
bindkey ^R history-incremental-search-backward
bindkey ^S history-incremental-search-forward
bindkey  '^?' backward-delete-char

