--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Global Rules
hl.window_rule({
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})

-- XWayland Fixes
hl.window_rule({
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Floating Windows
hl.window_rule({
    name   = "waypaper-float",
    match  = { class = "waypaper" },

    float  = true,
    size   = { 1100, 800 },
    center = true,
})

-- Layer Rules
hl.layer_rule({
    name       = "rofi-popup",
    match      = { namespace = "rofi" },
    animation  = "slide bottom",
    dim_around = true
})
