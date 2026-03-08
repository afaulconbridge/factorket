-- runtime stage (control script)
-- simple on_init to confirm the mod loaded
script.on_init(function()
    if game and game.print then
        game.print("[Factorket] factorket v0.1.0 initialized")
    end
end)

-- Give players a vending machine to buy with and one to sell with on game start
-- this means they don't need any pipes
-- Also need a solar panel for powering the vending machines
script.on_event(defines.events.on_cutscene_cancelled, function(event)
    local player = game.get_player(event.player_index)
    if player and player.get_main_inventory() then
        player.insert({
            name = "vending-machine",
            count = 2
        })
        player.insert({
            name = "solar-panel",
            count = 1
        })
    end
end)
