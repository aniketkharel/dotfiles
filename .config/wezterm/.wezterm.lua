local wezterm = require("wezterm")
local act = wezterm.action
local _font1 = "JetBrains"
local _font1 = "SFMono Nerd Font"
local _font3 = "FantasqueSansM Nerd Font"
local font = "CaskaydiaCove Nerd Font"

local mux = wezterm.mux

wezterm.on('gui-attached', function(_domain)
  -- maximize all displayed windows on startup
  local workspace = mux.get_active_workspace()
  for _, window in ipairs(mux.all_windows()) do
    if window:get_workspace() == workspace then
      window:gui_window():maximize()
    end
  end
end)

return {
  default_prog = { "nu", "-l" },
  disable_default_key_bindings = false,
  leader = { key = "b", mods = "CMD", timeout_milliseconds = 2000 },
  window_decorations = "RESIZE",

  window_padding = {
    left = "1cell",
    right = "1cell",
    top = "0cell",
    bottom = "0cell",
  },
  inactive_pane_hsb = {
    saturation = 1,
    brightness = 0.9,
  },
  color_scheme = "Gruvbox dark, medium (base16)",
  font = wezterm.font(font),
  font_size = 10,
  line_height = 1.2,
  use_dead_keys = false,
  scrollback_lines = 5000,
  adjust_window_size_when_changing_font_size = false,
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = true,
  window_frame = {
    font = wezterm.font({ family = font, weight = "Regular" }),
    font_size = 11.0,
    border_left_width = '0.2cell',
    border_right_width = '0.2cell',
    border_bottom_height = '0.1cell',
    border_top_height = '0.1cell',
    border_left_color = 'yellow',
    border_right_color = 'yellow',
    border_bottom_color = 'yellow',
    border_top_color = 'yellow',
  },
  keys = {
    { key = "l",     mods = "CMD|SHIFT",      action = act.ActivateTabRelative(1) },
    { key = "h",     mods = "CMD|SHIFT",      action = act.ActivateTabRelative(-1) },
    { key = "j",     mods = "CMD",            action = act.ActivatePaneDirection("Down") },
    { key = "k",     mods = "CMD",            action = act.ActivatePaneDirection("Up") },
    { key = "Enter", mods = "CMD",            action = act.ActivateCopyMode },
    { key = "R",     mods = "SHIFT|CTRL",     action = act.ReloadConfiguration },
    { key = "+",     mods = "CTRL|SHIFT",     action = act.IncreaseFontSize },
    { key = "-",     mods = "CTRL",           action = act.DecreaseFontSize },
    -- { key = "1", mods = "ALT", action = act.ActivateTab(0) },
    -- { key = "2", mods = "ALT", action = act.ActivateTab(1) },
    -- { key = "3", mods = "ALT", action = act.ActivateTab(2) },
    -- { key = "4", mods = "ALT", action = act.ActivateTab(3) },
    -- { key = "5", mods = "ALT", action = act.ActivateTab(4) },
    -- { key = "6", mods = "ALT", action = act.ActivateTab(5) },
    -- panes and splits
    { key = "k",     mods = "CTRL|SHIFT",     action = act.ActivatePaneDirection("Up") },
    { key = "j",     mods = "CTRL|SHIFT",     action = act.ActivatePaneDirection("Down") },
    { key = "h",     mods = "CTRL|SHIFT",     action = act.ActivatePaneDirection("Left") },
    { key = "l",     mods = "CTRL|SHIFT",     action = act.ActivatePaneDirection("Right") },
  {
    key = '|',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Left',
      -- command = { args = { 'top' } },
      size = { Percent = 50 },
    },
  },
  {
    key = '_',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Down',
      -- command = { args = { 'top' } },
      size = { Percent = 50 },
    },
  },
    -- adjusting
    { key = "k",     mods = "CTRL|SHIFT|ALT", action = act.AdjustPaneSize({ "Up", 1 }) },
    { key = "j",     mods = "CTRL|SHIFT|ALT", action = act.AdjustPaneSize({ "Down", 1 }) },
    { key = "h",     mods = "CTRL|SHIFT|ALT", action = act.AdjustPaneSize({ "Left", 1 }) },
    { key = "l",     mods = "CTRL|SHIFT|ALT", action = act.AdjustPaneSize({ "Right", 1 }) },
    -- end panes and splits
    { key = "C",     mods = "SHIFT|CTRL",     action = act.CopyTo("Clipboard") },
    { key = "N",     mods = "SHIFT|CTRL",     action = act.SpawnWindow },
    {
      key = "U",
      mods = "SHIFT|CTRL",
      action = act.CharSelect({ copy_on_select = true, copy_to = "ClipboardAndPrimarySelection" }),
    },
    { key = "v",     mods = "CMD",         action = act.PasteFrom("Clipboard") },
    { key = "b",     mods = "LEADER|CTRL", action = act.SendString("\x02") },
    { key = "Enter", mods = "LEADER",      action = act.ActivateCopyMode },
    { key = "p",     mods = "LEADER",      action = act.CopyTo("PrimarySelection") },
    {
      key = "k",
      mods = "CTRL|ALT",
      action = act.Multiple({
        act.ClearScrollback("ScrollbackAndViewport"),
        act.SendKey({ key = "L", mods = "CTRL" }),
      }),
    },
  },
}
