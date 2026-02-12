-- runtime stage (control script)
-- simple on_init to confirm the mod loaded
script.on_init(function()
  if game and game.print then
    game.print("[Factorket] factorket v0.1.0 initialized")
  end
end)

-- Example: simple command to show a message
commands.add_command("factorket-hello", "Say hello from factorket", function(cmd)
  if cmd.player_index then
    local player = game.get_player(cmd.player_index)
    if player then player.print("Hello from Factorket!") end
  else
    game.print("Hello from Factorket (server)!")
  end
end)