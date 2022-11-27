local wezterm = require 'wezterm'
local prog
local font

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  prog={'C:/Users/32145/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe'}
  font='JetBrains Mono'  
end
if wezterm.target_triple == 'x86_64-unknown-linux-gnu' then
  prog={'/usr/bin/zsh'}
  font='JetBrains Mono'  
end
return {
  enable_tab_bar=false,
  default_prog=prog,
  window_background_opacity = 1,
  tab_bar_at_bottom = true,
  font = wezterm.font_with_fallback {
    font,
  },
  font_size=11.0,
  color_scheme ="Ayu Mirage",
  keys = {
          { 
	   key = 'RightArrow',mods = 'CTRL',
           action = wezterm.action.SplitHorizontal {  domain = 'CurrentPaneDomain'},
   	},
	 {
	key = 'DownArrow',mods = 'CTRL',
	action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain'},
	}
    },
 }































