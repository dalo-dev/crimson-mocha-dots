# crimson-mocha-dots

My CachyOS + Hyprland setup using the [Catppuccin Mocha Red](https://github.com/catppuccin/catppuccin) palette.
The Hyprland config is written entirely in **Lua**.

![CachyOS](https://img.shields.io/badge/CachyOS-Arch_based-0f94d2?style=flat-square&logo=archlinux&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-Wayland-58e1ff?style=flat-square)
![Catppuccin](https://img.shields.io/badge/Catppuccin-Mocha_Red-f38ba8?style=flat-square)

---

## Preview

> Screenshots coming soon.

---

## Stack

![Hyprland](https://img.shields.io/badge/compositor-Hyprland-58e1ff?style=flat-square)
![Waybar](https://img.shields.io/badge/bar-Waybar-313244?style=flat-square)
![Kitty](https://img.shields.io/badge/terminal-Kitty-f38ba8?style=flat-square)
![Fish](https://img.shields.io/badge/shell-Fish-89b4fa?style=flat-square)
![Starship](https://img.shields.io/badge/prompt-Starship-f5e0dc?style=flat-square)
![Rofi](https://img.shields.io/badge/launcher-Rofi-cba6f7?style=flat-square)
![Nemo](https://img.shields.io/badge/files-Nemo-89b4fa?style=flat-square)
![Firefox](https://img.shields.io/badge/browser-Firefox-f9e2af?style=flat-square&logo=firefox&logoColor=black)
![Spotify](https://img.shields.io/badge/music-Spotify-a6e3a1?style=flat-square&logo=spotify&logoColor=black)
![awww](https://img.shields.io/badge/wallpaper-awww-94e2d5?style=flat-square)
![cliphist](https://img.shields.io/badge/clipboard-cliphist-89dceb?style=flat-square)
![WirePlumber](https://img.shields.io/badge/audio-WirePlumber-f38ba8?style=flat-square)
![brightnessctl](https://img.shields.io/badge/brightness-brightnessctl-f9e2af?style=flat-square)
![playerctl](https://img.shields.io/badge/media-playerctl-a6e3a1?style=flat-square)
![Mako](https://img.shields.io/badge/notifications-Mako-f38ba8?style=flat-square)

---

## Theming

| Component | Theme | Applied with |
|-----------|-------|--------------|
| Terminal  | [Catppuccin Mocha](https://github.com/catppuccin/kitty) | `current-theme.conf` via kitty include |
| Prompt    | [Catppuccin Mocha](https://github.com/catppuccin/starship) | palette defined in `starship.toml` |
| Launcher  | Catppuccin Mocha Red | `colors/catppuccin.rasi` imported in `shared/colors.rasi` |
| Notifications | Catppuccin Mocha Red | hardcoded in `mako/config` |
| GTK       | [Catppuccin Mocha](https://github.com/catppuccin/gtk) | [nwg-look](https://github.com/nwg-piotr/nwg-look) |
| Qt        | [Catppuccin Mocha](https://github.com/catppuccin/qt5ct) | [qt6ct](https://github.com/trialuser02/qt6ct) |
| Icons     | [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) + [catppuccin-papirus-folders](https://github.com/catppuccin/papirus-folders) | [nwg-look](https://github.com/nwg-piotr/nwg-look) |
| Cursor    | [Catppuccin Mocha Red](https://github.com/catppuccin/cursors) | [nwg-look](https://github.com/nwg-piotr/nwg-look) |

---

## Fonts

- [Noto Sans](https://fonts.google.com/noto/specimen/Noto+Sans) — GTK and Qt apps
- [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads) — terminal, TUI, IDE

---

## Directory structure

```
.config/
├── hypr/
│   ├── hyprland.lua        # Entry point — loads all modules
│   ├── hypridle.conf       # Idle daemon — dim, lock, dpms, suspend chain
│   ├── hyprlock.conf       # Lockscreen — clock, avatar, input field
│   ├── mocha.conf          # Catppuccin Mocha palette for hyprlock
│   └── modules/
│       ├── autostart.lua   # Services started on Hyprland startup
│       ├── binds.lua       # Keybindings
│       ├── decorations.lua # Colors, rounding, animations
│       ├── env.lua         # Environment variables
│       ├── input.lua       # Keyboard, mouse, touchpad settings
│       ├── layout.lua      # Dwindle / Master / Scrolling layout config
│       ├── misc.lua        # Miscellaneous Hyprland settings
│       ├── monitors.lua    # Monitor configuration
│       └── windowrules.lua # Window and layer rules
├── waybar/
│   ├── config.jsonc        # Modules, positions, and module config
│   ├── style.css           # Layout and component styles
│   └── mocha.css           # Catppuccin Mocha Red color variables
├── kitty/
│   ├── kitty.conf          # Font, opacity, padding, performance
│   └── current-theme.conf  # Catppuccin Mocha color scheme
├── fish/
│   └── config.fish         # Shell init — sources CachyOS config and Starship
├── rofi/
│   ├── colors/
│   │   └── catppuccin.rasi     # Catppuccin Mocha Red color palette (shared)
│   ├── shared/
│   │   ├── colors.rasi         # Imports active color scheme
│   │   └── fonts.rasi          # JetBrains Mono Nerd Font
│   ├── launcher/
│   │   ├── launcher.sh         # Entry point — launches rofi drun
│   │   └── style-8.rasi        # Active layout style
│   ├── powermenu/
│   │   ├── powermenu.sh        # Power menu — lock, suspend, logout, reboot, shutdown
│   │   └── style-2.rasi        # Active layout style
│   └── clipboard/
│       ├── clipboard.sh        # Clipboard history menu — cliphist via rofi dmenu
│       └── clipboard.rasi      # Layout and styling
├── mako/
│   └── config              # Notification daemon — colors, urgency rules, mpd category
├── wallpapers/             # Wallpaper collection
└── starship.toml           # Prompt layout with Catppuccin Mocha palette
```

---

## Dependencies

### Core
- [`hyprland`](https://github.com/hyprwm/Hyprland) — Wayland compositor (Lua config support required)
- [`waybar`](https://github.com/Alexays/Waybar) — status bar
- [`kitty`](https://github.com/kovidgoyal/kitty) — terminal emulator
- [`fish`](https://fishshell.com) — shell
- [`starship`](https://starship.rs) — cross-shell prompt
- [`rofi-wayland`](https://github.com/lbonn/rofi) — application launcher and dmenu replacement
- [`mako`](https://github.com/emersion/mako) — notification daemon
- [`nemo`](https://github.com/linuxmint/nemo) — file manager
- [`firefox`](https://www.mozilla.org/firefox/) — browser

### Wayland / Clipboard
- [`wl-clipboard`](https://github.com/bugaevc/wl-clipboard) — `wl-copy` / `wl-paste`
- [`cliphist`](https://github.com/sentriz/cliphist) — clipboard history daemon

### Lock / Idle
- [`hyprlock`](https://github.com/hyprwm/hyprlock) — lockscreen
- [`hypridle`](https://github.com/hyprwm/hypridle) — idle daemon (dim → lock → dpms → suspend)

### Screenshots
- [`grim`](https://sr.ht/~emersion/grim) — screenshot capture
- [`slurp`](https://github.com/emersion/slurp) — region selection
- [`swappy`](https://github.com/jtheoof/swappy) — screenshot annotation/editing

### Wallpaper
- [`awww`](https://github.com/danyspin97/wpaperd) — wallpaper daemon
- [`wpaperctl`](https://github.com/danyspin97/wpaperd) — wallpaper control CLI
- [`waypaper`](https://github.com/anufrievroman/waypaper) — wallpaper picker GUI

### Hardware / Media
- [`wireplumber`](https://pipewire.pages.freedesktop.org/wireplumber/) — `wpctl` for audio
- [`brightnessctl`](https://github.com/Hummer12007/brightnessctl) — screen brightness
- [`playerctl`](https://github.com/altdesktop/playerctl) — media player control

### Theme
- [`catppuccin-mocha-red-cursors`](https://github.com/catppuccin/cursors) — cursor theme
- [`qt6ct`](https://github.com/trialuser02/qt6ct) — Qt6 theme configuration
- [`nwg-look`](https://github.com/nwg-piotr/nwg-look) — GTK settings for Wayland

### Auth / Power
- `hyprpolkitagent` — Polkit authentication agent for Hyprland

---

## TODO

- [x] **hyprlock** — themed lockscreen config (Catppuccin Mocha Red)
- [x] **hypridle** — idle daemon config (timeout → lock → sleep chain)
- [x] **Screenshots** — `grim`+`slurp` (full + annotate via `swappy`) with keybinds
- [ ] **Spicetify** — Spotify theming to match the palette
- [ ] **Firefox** — `userChrome.css` for a themed browser UI
- [ ] **Neovim** — editor config with Catppuccin Mocha
- [ ] **Deploy script** — `install.sh` or `stow` setup for easy deployment
- [ ] **Preview screenshots** — add to README
