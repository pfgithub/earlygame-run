data:extend({
  {
    type = "shortcut",
    name = "toggle-run",
    action = "lua",
    toggleable = "true",
    associated_control_input = "toggle-run",
    icon = {
      filename = "__earlygame-run__/run.png",
      priority = "extra-high-no-scale",
      size = 32,
      scale = 1,
      flags = {"icon"}
    },
  }
})

data:extend({
  {
    type = "custom-input",
    name = "toggle-run",
    key_sequence = "LCTRL",
  }
})
