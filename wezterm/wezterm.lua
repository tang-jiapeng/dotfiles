local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- 初始大小
config.initial_cols = 120
config.initial_rows = 40

-- config
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"

if string.find(wezterm.target_triple, "windows") then
  config.default_domain = "WSL:Arch"
end

--Colors & Appearance
config.color_scheme = 'Tokyo Night'
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.show_tab_index_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false

config.window_padding = {
  left = 10,
  right = 0,
  top = 10,
  bottom = 0,
}


-- config.inactive_pane_hsb = {
--   saturation = 0.9,
--   brightness = 0.8,
-- }

-- config.window_background_opacity = 1
-- config.text_background_opacity = 0.5

-- Fonts
config.font = wezterm.font_with_fallback({
  {
    family = "FiraCode Nerd Font",
    scale = 1,
    weight = "Medium",
    -- italic = true,
    -- => != !==
    -- harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  },
})


return config
