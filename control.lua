function toggleRun(event)
  local player = game.players[event.player_index]
  local on = player.is_shortcut_toggled("toggle-run")
  player.set_shortcut_toggled("toggle-run", not on)
  if on then
    player.force.character_running_speed_modifier = 0
  else
    player.force.character_running_speed_modifier = 1
  end
end

script.on_event(defines.events.on_lua_shortcut, function(event)
  if event.prototype_name == "toggle-run" then
    toggleRun(event)
  end
end)

script.on_event("toggle-run", toggleRun)

script.on_event(defines.events.on_tick, function(event)
  for id, player in pairs(game.players) do
    if player.walking_state.walking then
      player.set_shortcut_available("toggle-run", true)
    else
      player.set_shortcut_toggled("toggle-run", false)
      player.set_shortcut_available("toggle-run", false)
      player.force.character_running_speed_modifier = 0
    end
  end
end)
