#! /usr/bin/env bash
#
# Script for uninstall oh-my-vim automatically.
#
# @author yanxuan.lc
# @version 1.0.0
# @since 1.0.0
#

OMV_HOME=~/.oh-my-vim

function main() {

    # Confirmation
    read -r -p "Are you sure you want to remove Oh My VIM? [y/N] " confirmation
    if [ "$confirmation" != y ] && [ "$confirmation" != Y ]; then
      echo "Uninstall cancelled"
      exit
    fi

    # Remove .oh-my-vim
    echo "Removing ~/.oh-my-vim"
    if [ -d ~/.oh-my-vim ]; then
      rm -rf ~/.oh-my-vim
    fi

    # Remove .vimrc configurations
    echo "Removing ~/.vimrc"
    if [ -f ~/.vimrc ]; then
      rm -rf ~/.vimrc
    fi

    # Remove .vim
    echo "Removing ~/.vim"
    if [ -d ~/.vim ]; then
      rm -rf ~/.vim
    fi

    # Restore original vim config
    echo "Looking for original vim config..."
    if [ -d ~/.vim.origin/.vim ]; then
      echo "Restore .vim from ~/.vim.origin/.vim"
      mv ~/.vim.origin/.vim ~/.vim
    fi
    if [ -f ~/.vim.origin/.vimrc ] || [ -h ~/.vim.origin/.vimrc ]; then
      echo "Restore .vimrc from ~/.vim.origin/.vimrc"
      mv ~/.vim.origin/.vimrc ~/.vimrc
    fi

    # Remove ~/.vim.origin
    rm -rf ~/.vim.origin

    # Finish
    echo "Thanks for trying out Oh My VIM. It's been uninstalled."
}

main
