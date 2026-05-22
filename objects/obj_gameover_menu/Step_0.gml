if (keyboard_check_pressed(vk_enter))
{
    global.music_should_play = true;

    if (!audio_is_playing(snd_music_game))
    {
        global.music_handle = audio_play_sound(snd_music_game, 1, true);
        audio_sound_gain(global.music_handle, global.music_volume, 0);
    }

    global.fade_target_room = rm_malteseroads;
    global.fade_state = "fade_out";
}