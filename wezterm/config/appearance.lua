local gpu_adapters = require('utils.gpu-adapter')
local backdrops = require('utils.backdrops')
local colors = require('colors.custom')
--{{{> Qeuroal
local platform = require('utils.platform')
--<}}}

---@type Config
return {
  max_fps = 120,
  front_end = 'WebGpu', ---@type 'WebGpu' | 'OpenGL' | 'Software'
  webgpu_power_preference = 'HighPerformance',
  webgpu_preferred_adapter = gpu_adapters:pick_best(),
  -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
  -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),
  underline_thickness = '1.5pt',
  --{{{> Qeuroal
  cursor_thickness = platform.is_mac and "200%" or "130%",
  --<}}}

  -- cursor
  animation_fps = 120,
  cursor_blink_ease_in = 'EaseOut',
  cursor_blink_ease_out = 'EaseOut',
  default_cursor_style = 'BlinkingBlock',
  --{{{> Qeuroal
  -- cursor_blink_rate = 650,
  cursor_blink_rate = 0,
  --<}}}

  -- color scheme
  colors = colors,

  -- background: true: start in focus mode; false: show wallpaper background
  background = backdrops:initial_options({ no_img = false }),

  -- scrollbar
  enable_scroll_bar = true,

  -- tab bar
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = false,
  tab_max_width = 23,
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,

  -- command palette
  command_palette_fg_color = '#b4befe',
  command_palette_bg_color = '#11111b',
  command_palette_font_size = 12,
  command_palette_rows = 25,

  -- window
  --{{{> Qeuroal
  window_decorations = "INTEGRATED_BUTTONS|RESIZE",
  integrated_title_button_style = "Windows",
  integrated_title_button_color = "auto",
  integrated_title_button_alignment = "Right",
  initial_cols = 240,
  initial_rows = 120,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  adjust_window_size_when_changing_font_size = false,
  window_close_confirmation = 'AlwaysPrompt', -- NeverPrompt

  window_frame = {
    -- active_titlebar_bg = '#090909',
    -- inactive_titlebar_bg = "#0F2536",
    active_titlebar_bg = '#24273a',
    inactive_titlebar_bg = '#181926',
    -- font = fonts.font,
    -- font_size = fonts.font_size,
  },
  --<}}}

  -- inactive_pane_hsb = {
  --   saturation = 0.9,
  --   brightness = 0.65,
  -- },
  inactive_pane_hsb = {
    saturation = 1,
    brightness = 1,
  },

  visual_bell = {
    fade_in_function = 'EaseIn',
    fade_in_duration_ms = 250,
    fade_out_function = 'EaseOut',
    fade_out_duration_ms = 250,
    target = 'CursorColor',
  },
}
