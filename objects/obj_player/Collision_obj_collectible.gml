// Only collect items during normal gameplay
if (obj_game.game_state == "playing")
{
    obj_game.items_collected += 1;

    // Add 2 seconds to timer
    with (obj_timer)
    {
        timer_frames += room_speed * 2;
    }

    // Destroy collected item
    with (other)
    {
        instance_destroy();
    }

    // Start finish state instead of going to rm_win
    if (obj_game.items_collected >= obj_game.items_needed)
    {
        obj_game.game_state = "finishing";

        // Remove remaining collectibles
        with (obj_collectible)
        {
            instance_destroy();
        }
    }
}