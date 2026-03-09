local wezterm = require('wezterm')
local gpu_adapters = require('utils.gpu_adapter')
-- local colors = require('colors.custom')  -- Commented out this line

return {
   animation_fps = 60,
   max_fps = 60,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   webgpu_force_fallback_adapter = false,

   -- color scheme
   -- color_scheme = 'Catppuccin Mocha',  -- Changed to lowercase 'nightfox'
   color_scheme = 'nightfox',  -- Changed to lowercase 'nightfox'

   -- background
   background = {
      {
         source = { File = wezterm.GLOBAL.background },
         height = '100%',  -- Added height
         opacity = 0.5,    -- Adjusted opacity
      },
      {
         source = { Color = wezterm.color.parse('rgba(0, 0, 0, 0.85)') },  -- Changed to a semi-transparent black
         height = '100%',
         width = '100%',
      },
   },

   -- scrollbar
   enable_scroll_bar = true,

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = true,
   tab_max_width = 50,
   show_tab_index_in_tab_bar = true,
   switch_to_last_active_tab_when_closing_tab = true,

   -- window
   window_padding = {
      left = 5,
      right = 10,
      top = 12,
      bottom = 7,
   },
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#090909',
      font = wezterm.font({ family = 'Roboto', weight = 'Bold' }),
      font_size = 14.0,
   },
   inactive_pane_hsb = {
      saturation = 0.9,
      brightness = 0.65,
   },

   -- brighten text (1.0 = normal, higher = brighter)
   foreground_text_hsb = {
      hue = 1.0,
      saturation = 1.0,
      brightness = 1.4,
   },

   -- pane split color
   colors = {
      split = '#f38ba8',
   },

   -- pane selection overlay
   pane_select_font_size = 48,
}
