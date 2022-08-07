local wezterm = require 'wezterm'
if wezterm.target_triple == '' then
  default_prog={'C://ProgramFiles//PowerShell//7'}
end
return {
  window_background_opacity = 0.8,
  tab_bar_at_bottom = true,
  font = wezterm.font_with_fallback {
    'MesloLGS Nerd Font',
    'JetBrains Mono',
  },
  font_size=11.0,
  color_scheme ="Ayu Mirage",
}
