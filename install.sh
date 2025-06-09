#!/bin/bash

cp vimrc ~/.vimrc.shared
grep "source $HOME/.vimrc.shared" ~/.vimrc >/dev/null\
    || ( echo; echo "source $HOME/.vimrc.shared" ) >> ~/.vimrc

cp zshrc ~/.zshrc.shared
grep "source $HOME/.zshrc.shared" ~/.zshrc >/dev/null\
    || ( echo; echo "source $HOME/.zshrc.shared" ) >> ~/.zshrc
