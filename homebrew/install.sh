#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

cd "$(dirname "$0")"

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew"

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

if test $(which brew)
then
  brew bundle
fi

NODE_VERSION=18

fnm install $NODE_VERSION
fnm default $NODE_VERSION
fnm use default

# Install global NPM packages
packages=(
  @githubnext/github-copilot-cli
)

npm install -g "${packages[@]}"

# Set up GitHub Copilot CLI aliases
# Storing these in a file in the dotfiles repo so they can be versioned.
# We'll update the aliases upon install, but may need to commit changes if necessary
echo "$(github-copilot-cli alias -- "$0")" > copilot-aliases.zsh
