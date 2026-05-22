/// @description Insert description here
// You can write your code in this editor

persistent = true;

if (!variable_global_exists("fade_alpha"))
{
    global.fade_alpha = 1;
}

if (!variable_global_exists("fade_state"))
{
    global.fade_state = "fade_in";
}

if (!variable_global_exists("fade_target_room"))
{
    global.fade_target_room = noone;
}

fade_speed = 0.06;
depth = -99999;