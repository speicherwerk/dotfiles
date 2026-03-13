#!/bin/bash

# Copies the given dotfile source to home directory, overwriting any
# existing (prior) version and adding a `source ...` line to the parent if not
# already there.
# Arguments:
# - dotfile source
# - parent
install_source() {
    local source_line="source $HOME/.$1.shared"
    cp "$1" "$HOME/.$1.shared"
    grep "$source_line" $2 >/dev/null\
        || ( echo; echo "$source_line" ) >> $2
}

install_source "vimrc" "$HOME/.vimrc"
install_source "zshrc" "$HOME/.zshrc"

