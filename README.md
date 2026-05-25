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

---

## Theming

| Component | Theme | Applied with |
|-----------|-------|--------------|
| Terminal  | [Catppuccin Mocha](https://github.com/catppuccin/kitty) | `current-theme.conf` via kitty include |
| Prompt    | [Catppuccin Mocha](https://github.com/catppuccin/starship) | palette defined in `starship.toml` |
| Launcher  | Catppuccin Mocha Red | `colors/catppuccin.rasi` imported in `shared/colors.rasi` |
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
│   └── modules/
│       ├── autostart.lua   # Services started on Hyprland startup
│       ├── binds.lua       # Keybindings and submaps
│       ├── decorations.lua # Colors, rounding, animations
│       ├── env.lua         # Environment variables
│       ├── input.lua       # Keyboard, mouse, touchpad settings
│       ├── layout.lua      # Dwindle / Master / Scrolling layout config
│       ├── misc.lua        # Miscellaneous Hyprland settings
│       ├── monitors.lua    # Monitor configuration
│       └── windowrules.lua # Window and layer rules
├── kitty/
│   ├── kitty.conf          # Font, opacity, padding, performance
│   └── current-theme.conf  # Catppuccin Mocha color scheme
├── fish/
│   └── config.fish         # Shell init — sources CachyOS config and Starship
├── rofi/
│   └── launcher/
│       ├── launcher.sh         # Entry point — picks style and launches rofi drun
│       ├── style-{1..15}.rasi  # 15 layout styles
│       ├── colors/
│       │   └── catppuccin.rasi # Catppuccin Mocha Red color palette
│       └── shared/
│           ├── colors.rasi     # Imports active color scheme
│           └── fonts.rasi      # JetBrains Mono Nerd Font
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
- [`nemo`](https://github.com/linuxmint/nemo) — file manager
- [`firefox`](https://www.mozilla.org/firefox/) — browser

### Wayland / Clipboard
- [`wl-clipboard`](https://github.com/bugaevc/wl-clipboard) — `wl-copy` / `wl-paste`
- [`cliphist`](https://github.com/sentriz/cliphist) — clipboard history daemon

### Wallpaper
- [`awww`](https://github.com/danyspin97/wpaperd) — wallpaper daemon
- [`wpaperctl`](https://github.com/danyspin97/wpaperd) — wallpaper control CLI

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
- `hyprshutdown` — graceful session/poweroff/reboot helper
