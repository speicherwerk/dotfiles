export EDITOR=vim

# Path to iCloud on macOS
export ICLOUD=~/Library/Mobile\ Documents/com~apple~CloudDocs/

# Vim mode in zsh but preserve useful keybinds
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^N' down-history
bindkey '^P' up-history
bindkey '^?' backward-delete-char
bindkey '^U' kill-whole-line

# Quit shell like vim
alias :q='exit'

alias ls='ls --color'
alias grep='grep --color'

# Prose nvim
pnvim() {
    nvim\
        +Limelight\
        "+colors lauds"\
        -c "autocmd VimEnter * ++once lua vim.defer_fn(function() vim.o.laststatus = 0 require('lualine').hide() end, 200)"\
        "$@"
}


# Set the prompt
autoload -U colors && colors
PROMPT="%{$fg_bold[magenta]%}%n%{$fg[blue]%}@%{$fg_bold[magenta]%}%1d%{$reset_color%}: "

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

