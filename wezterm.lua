local wezterm = require 'wezterm';
local act = wezterm.action

wezterm.on('set_opacity', function(window, pane)
  local overrides = window:get_config_overrides() or {}
  if not overrides.window_background_opacity then
    overrides.window_background_opacity = 0.3
  else
    overrides.window_background_opacity = nil
  end
  window:set_config_overrides(overrides)
end)

wezterm.on('set_font_size', function(window, pane)
  local overrides = window:get_config_overrides() or {}
  if not overrides.font_size then
    overrides.font_size = 16.0
  else
    overrides.font_size = nil
  end
  window:set_config_overrides(overrides)
end)

return {
    use_ime = true,
    font_size = 12.0,
    color_scheme = "Hybrid (terminal.sexy)",
    window_background_opacity=1.0,
    hide_tab_bar_if_only_one_tab = true,
    warn_about_missing_glyphs = false,
    initial_cols = 120,
    initial_rows = 40,
    adjust_window_size_when_changing_font_size = false,
    keys = {{
        key = '"',
        mods = 'CTRL|SHIFT',
        action = act.SplitVertical {
            domain = 'CurrentPaneDomain'
        }
    }, {
        key = '%',
        mods = 'CTRL|SHIFT',
        action = act.SplitHorizontal {
            domain = 'CurrentPaneDomain'
        }
    }, {
        key = 'h',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Left'
    }, {
        key = 'l',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Right'
    }, {
        key = 'k',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Up'
    }, {
        key = 'j',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Down'
    },{
			 key = 'o',
			 mods = 'CTRL',
			 action = act.EmitEvent 'set_opacity'
		},{
			key = 'M',
			mods = 'CTRL|SHIFT',
			action = act.EmitEvent 'set_font_size'
		} 
}}


