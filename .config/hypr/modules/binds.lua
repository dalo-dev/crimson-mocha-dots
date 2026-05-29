---------------------------
---- PROGRAMS & MODS ----
---------------------------

-- Set programs that you use
local terminal = "kitty"
local fileManager = "nemo"
local browser = "firefox"
local music = "spotify"
local wallpaper = "waypaper"

-- Rofi menu commands
local launcher = "~/.config/rofi/launcher/launcher.sh"
local clipboardHistory = "cliphist list | rofi -dmenu -display-columns 2 | cliphist decode | wl-copy"

-- Modifier keys
local mainMod = "SUPER"
local secondMod = "SUPER + SHIFT"

---------------------
---- KEYBINDINGS ----
---------------------

-- Core Window Management
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + v", hl.dsp.layout("togglesplit"))
hl.bind(secondMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(secondMod .. " + T", hl.dsp.window.float({ action = "toggle" }))

-- Mouse Binds (Move/Resize)
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Application Launchers
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(music))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(wallpaper))

-- Rofi Menus
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(launcher))
hl.bind(secondMod .. " + C", hl.dsp.exec_cmd(clipboardHistory))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("~/.config/rofi/powermenu/powermenu.sh"))

-- Window Focus (Arrow Keys)
hl.bind(mainMod .. " + Left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + Up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + Down", hl.dsp.focus({ direction = "down" }))

-- Moving Windows (Shift + Arrow Keys)
hl.bind(secondMod .. " + Left", hl.dsp.window.move({ direction = "left" }))
hl.bind(secondMod .. " + Right", hl.dsp.window.move({ direction = "right" }))
hl.bind(secondMod .. " + Up", hl.dsp.window.move({ direction = "up" }))
hl.bind(secondMod .. " + Down", hl.dsp.window.move({ direction = "down" }))

-- Workspaces Navigation & Management
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(secondMod .. " + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Special Workspace (Scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(secondMod .. " + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Hardware & Media Controls (Audio / Brightness)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Hardware & Media Controls (Playerctl)
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Screenshots
hl.bind("Print", hl.dsp.exec_cmd('f="$HOME/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png"; grim -g "$(slurp -d)" "$f" && wl-copy < "$f" && notify-send "Screenshot" "Saved and copied to clipboard"'))
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd('m=$(mktemp); grim -g "$(slurp -d)" - | swappy -f -; find "$HOME/Pictures/Screenshots" -newer "$m" -name "*.png" | grep -q . && notify-send "Screenshot" "Saved to ~/Pictures/Screenshots"; rm -f "$m"'))
