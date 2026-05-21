if (obj_game.game_state != "playing")
{
    exit;
}

if (timer_frames > 0)
{
    timer_frames -= 1;
}
//if timer hits 0 go to gameover room//
else
{
    room_goto(rm_gameover);
}

