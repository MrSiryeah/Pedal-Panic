// Timer only runs during gameplay
if (obj_game.game_state != "playing")
{
    exit;
}

if (timer_frames > 0)
{
    timer_frames -= 1;
}
else
{
    // Play game over sound once
    audio_play_sound(snd_gameover, 8, false);

	global.fade_target_room = rm_gameover;
	global.fade_state = "fade_out";
}