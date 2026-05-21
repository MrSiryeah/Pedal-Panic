// ===============================
// AUDIO SETUP
// ===============================

// Master volume
audio_master_gain(1);

// Start background music
if (!audio_is_playing(snd_music_game))
{
    audio_play_sound(snd_music_game, 1, true);
}

// Set music volume lower than sound effects
audio_sound_gain(snd_music_game, 0.35, 0);