# Update dotfiles
dfu() {
    (
        cd ~/.dotfiles && git pull --ff-only && ./install
    )
}
