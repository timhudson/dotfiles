#!/usr/bin/env bash

cd "$(dirname "$0")"

# Check for fnm (installed via Homebrew)
if test ! $(which fnm)
then
  echo "  Must install fnm first (surprised this didn't happen via Homebrew?)"
  exit 1
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
