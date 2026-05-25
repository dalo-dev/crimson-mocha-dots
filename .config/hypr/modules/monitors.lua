------------------
---- MONITORS ----
------------------
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- Main Monitor
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@144.00301",
    position = "0x0",
    scale    = "1",
})

-- Additional monitors
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})
