// Timer only runs during gameplay
if (obj_game.game_state != "playing")
{
    exit;
}

// If game over already started, do nothing
if (gameover_triggered)
{
    exit;
}

if (timer_frames > 0)
{
    timer_frames -= 1;
}
else
{
    gameover_triggered = true;

    // Stop gameplay music before lose sound
    global.music_should_play = false;

    if (audio_is_playing(snd_music_game))
    {
        audio_stop_sound(snd_music_game);
    }

    // Play game over sound once
    var lose_snd;
    lose_snd = audio_play_sound(snd_gameover, 8, false);
    audio_sound_gain(lose_snd, global.sfx_volume, 0);

    // Go to game over screen
    room_goto(rm_gameover);
}