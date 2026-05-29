source /usr/share/cachyos-fish-config/cachyos-config.fish
starship init fish | source

fish_add_path /home/dalo/.spicetify

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
