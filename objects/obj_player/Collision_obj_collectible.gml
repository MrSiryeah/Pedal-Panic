// Only collect items during normal gameplay
if (obj_game.game_state == "playing")
{
    // Play collect sound
    audio_play_sound(snd_collect, 5, false);

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

    // Start finish state
    if (obj_game.items_collected >= obj_game.items_needed)
    {
        obj_game.game_state = "finishing";

        with (obj_collectible)
        {
            instance_destroy();
        }
    }
}