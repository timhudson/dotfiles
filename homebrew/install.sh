#!/bin/sh
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
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi

if test $(which brew)
then
  brew bundle
fi

exit 0
