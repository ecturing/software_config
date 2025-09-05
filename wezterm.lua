local wezterm = require 'wezterm'
local prog

local config = {}

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  prog = { 'pwsh.exe' }
end

if wezterm.target_triple == 'x86_64-unknown-linux-gnu' then
  prog = { 'zsh' }
end

config.window_frame = {
  inactive_titlebar_bg = "none",
  active_titlebar_bg = "none",
}

config.font = wezterm.font('JetBrains Mono')

config.animation_fps = 60
config.default_prog = prog
config.window_background_opacity = 1
config.font_size = 12.0
config.color_scheme = "Belge (terminal.sexy)"
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.keys = {
  {
    key = 'RightArrow',
    mods = 'CTRL',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'DownArrow',
    mods = 'CTRL',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'D',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  }
}

return config
