// ===============================
// MUSIC CONTROLLER
// ===============================

// Music should play on title, gameplay, pause/settings/gameover
// It will be manually stopped for the win song.
if (!variable_global_exists("music_should_play"))
{
    global.music_should_play = true;
}

if (global.music_should_play)
{
    if (!audio_is_playing(snd_music_game))
    {
        global.music_handle = audio_play_sound(snd_music_game, 1, true);
    }

    if (global.music_handle != noone)
    {
        audio_sound_gain(global.music_handle, global.music_volume, 0);
    }
}