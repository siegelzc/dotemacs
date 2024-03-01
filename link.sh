#!/bin/zsh

echo 'Backing up ~/.emacs.d/init.el to ~/.emacs.d/init.el.bak'
mv ~/.emacs.d/init.el ~/.emacs.d/init.el.bak

echo 'Overwriting ~/.emacs.d/init.el'
mkdir -p ~/.emacs.d
ln -s $(realpath init.el) ~/.emacs.d
