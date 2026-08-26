local active_border_color = "rgb(F0B83A)"
local inactive_border_color = "rgb(815A3A)"

-- A restrained vault-style easing curve for windows and border transitions.
local oligarchy_curve = "oligarchyVault"
hl.curve(oligarchy_curve, { type = "bezier", points = { { 0.18, 0.9 }, { 0.32, 1 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 3.45, bezier = oligarchy_curve })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.7, bezier = oligarchy_curve, style = "popin 93%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.1, bezier = "easeInOutCubic", style = "popin 93%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.8, bezier = oligarchy_curve })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.0, bezier = "easeInOutCubic" })
hl.animation({ leaf = "border", enabled = true, speed = 4.4, bezier = oligarchy_curve })

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})
