#!/bin/bash

cp vimrc ~/.vimrc.shared
grep "source $HOME/.vimrc.shared" ~/.vimrc || ( echo; echo "source $HOME/.vimrc.shared" ) >> ~/.vimrc

cp zshrc ~/.zshrc.shared
grep "source $HOME/.zshrc.shared" ~/.zshrc || ( echo; echo "source $HOME/.zshrc.shared" ) >> ~/.zshrc
