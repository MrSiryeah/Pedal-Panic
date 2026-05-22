// Only collect items during normal gameplay
if (obj_game.game_state == "playing")
{
    // Play collect sound
    var collect_snd;
	collect_snd = audio_play_sound(snd_collect, 5, false);
	audio_sound_gain(collect_snd, global.sfx_volume * global.collect_volume, 0);

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