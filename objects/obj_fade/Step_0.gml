/// @description Insert description here
// You can write your code in this editor

if (global.fade_state == "fade_in")
{
    global.fade_alpha -= fade_speed;

    if (global.fade_alpha <= 0)
    {
        global.fade_alpha = 0;
        global.fade_state = "none";
    }
}

if (global.fade_state == "fade_out")
{
    global.fade_alpha += fade_speed;

    if (global.fade_alpha >= 1)
    {
        global.fade_alpha = 1;

        if (global.fade_target_room != noone)
        {
            room_goto(global.fade_target_room);
        }

        global.fade_state = "fade_in";
    }
}