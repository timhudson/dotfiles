# VSCode's settings.json file needs to live in a different folder from the user root
ln -sf "${HOME}/.vscode.settings.json" "${HOME}/Library/Application Support/VSCodium/User/settings.json"