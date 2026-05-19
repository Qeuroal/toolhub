local wezterm = require('wezterm')
local platform = require('utils.platform')

-- local font_family = 'Maple Mono NF'
local font_family = 'JetBrainsMonoNL Nerd Font'
-- local font_family = 'CartographCF Nerd Font'

local font_size = platform.is_mac and 21 or 15

---@type Config
return {
  font = wezterm.font_with_fallback({
    { family = font_family, weight = 'Medium', },
    'Symbols Nerd Font',
    'PingFang SC',
    'Hiragino Sans GB',
    { family = 'Menlo', scale = 1.25 },
  }),
  font_size = font_size,
  -- allow_square_glyphs_to_overflow_width = 'Always',

  --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
  freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
  freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
