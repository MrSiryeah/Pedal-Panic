if (keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left))
{
    global.music_should_play = true;

    if (!audio_is_playing(snd_music_game))
    {
        global.music_handle = audio_play_sound(snd_music_game, 1, true);
        audio_sound_gain(global.music_handle, global.music_volume, 0);
    }

    // Tell gameplay room to fully reset itself
    global.reset_gameplay = true;

    room_goto(rm_malteseroads);
}