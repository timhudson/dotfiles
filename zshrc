clear

# Allow local customizations in the ~/.shell_local_before file
if [ -f ~/.shell_local_before ]; then
    source ~/.shell_local_before
fi

# Aliases
source ~/.shell/aliases.sh

# Functions
source ~/.shell/functions.sh

# Zsh Settings
source ~/.zsh/settings.zsh

# Zsh Prompt
source ~/.zsh/prompt.zsh

# Allow local customizations in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi
