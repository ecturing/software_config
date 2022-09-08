local wezterm = require 'wezterm'
local prog
local font

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  prog={'C:/Program Files/PowerShell/7/pwsh.exe'}
  font='JetBrains Mono'  
end
if wezterm.target_triple == 'x86_64-unknown-linux-gnu' then
  prog={'/usr/bin/zsh'}
  font='JetBrains Mono'  
end
return {
  default_prog=prog,
  window_background_opacity = 0.8,
  tab_bar_at_bottom = true,
  font = wezterm.font_with_fallback {
    font,
  },
  font_size=11.0,
  color_scheme ="Ayu Mirage",
}
