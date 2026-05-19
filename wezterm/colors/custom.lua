-- A slightly altered version of catppucchin mocha
-- stylua: ignore
local mocha = {
  rosewater = '#f5e0dc',
  flamingo  = '#f2cdcd',
  pink      = '#f5c2e7',
  mauve     = '#cba6f7',
  red       = '#f38ba8',
  maroon    = '#eba0ac',
  peach     = '#fab387',
  yellow    = '#f9e2af',
  green     = '#a6e3a1',
  teal      = '#94e2d5',
  sky       = '#89dceb',
  sapphire  = '#74c7ec',
  blue      = '#89b4fa',
  lavender  = '#b4befe',
  text      = '#cdd6f4',
  subtext1  = '#bac2de',
  subtext0  = '#a6adc8',
  overlay2  = '#9399b2',
  overlay1  = '#7f849c',
  overlay0  = '#6c7086',
  surface2  = '#585b70',
  surface1  = '#45475a',
  surface0  = '#313244',
  base      = '#1f1f28',
  mantle    = '#181825',
  crust     = '#11111b',
}

--{{{> Qeruaol
local macchiato = {
  rosewater = "#f4dbd6",
  flamingo = "#f0c6c6",
  pink = "#f5bde6",
  mauve = "#c6a0f6",
  red = "#ed8796",
  maroon = "#ee99a0",
  peach = "#f5a97f",
  yellow = "#eed49f",
  green = "#a6da95",
  teal = "#8bd5ca",
  sky = "#91d7e3",
  sapphire = "#7dc4e4",
  blue = "#8aadf4",
  lavender = "#b7bdf8",
  text = "#cad3f5",
  subtext1 = "#b8c0e0",
  subtext0 = "#a5adcb",
  overlay2 = "#939ab7",
  overlay1 = "#8087a2",
  overlay0 = "#6e738d",
  surface2 = "#5b6078",
  surface1 = "#494d64",
  surface0 = "#363a4f",
  base = "#24273a",
  mantle = "#1e2030",
  crust = "#181926",
}

local colorscheme = {
  foreground = macchiato.text,
  background = macchiato.base,
  -- cursor_bg = macchiato.rosewater,
  -- cursor_border = macchiato.rosewater,
  -- cursor_fg = macchiato.crust,
  cursor_bg = '#ff6347',
  cursor_border = '#ff6347',
  cursor_fg = '#ffffff',
  selection_bg = macchiato.surface2,
  selection_fg = macchiato.text,
  ansi = {
    macchiato.surface1, -- black
    macchiato.red, -- red
    macchiato.green, -- green
    macchiato.yellow, -- yellow
    macchiato.blue, -- blue
    macchiato.pink, -- magenta/purple
    macchiato.teal, -- cyan
    macchiato.subtext1, -- white
  },
  brights = {
    macchiato.surface2, -- black
    macchiato.red, -- red
    macchiato.green, -- green
    macchiato.yellow, -- yellow
    macchiato.blue, -- blue
    macchiato.pink, -- magenta/purple
    macchiato.teal, -- cyan
    macchiato.subtext0, -- white
  },
  tab_bar = {
    -- background = 'rgba(0, 0, 0, 0.4)',
    background = 'rgba(36, 39, 58, 0.4)',
    -- background = macchiato.base,
    active_tab = {
      bg_color = macchiato.surface2,
      fg_color = macchiato.text,
    },
    inactive_tab = {
      bg_color = macchiato.surface0,
      fg_color = macchiato.subtext1,
    },
    inactive_tab_hover = {
      bg_color = macchiato.surface0,
      fg_color = macchiato.text,
    },
    new_tab = {
      bg_color = macchiato.base,
      fg_color = macchiato.text,
    },
    new_tab_hover = {
      bg_color = macchiato.mantle,
      fg_color = macchiato.text,
      italic = true,
    },
  },
  visual_bell = macchiato.red,
  indexed = {
    [16] = macchiato.peach,
    [17] = macchiato.rosewater,
  },
  scrollbar_thumb = macchiato.surface2,
  split = macchiato.overlay0,
  compose_cursor = macchiato.flamingo,
}
--<}}}

return colorscheme
