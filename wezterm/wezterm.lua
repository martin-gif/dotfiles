local wezterm = require 'wezterm'
local config = {
  color_scheme = "Catppuccin Mocha",
  font =
    wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true }),
  font_size = 14.0,

  -- tab bar stylle 
  hide_tab_bar_if_only_one_tab = true,
}

return config
