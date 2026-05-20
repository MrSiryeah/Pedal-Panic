/// @description Insert description here
// You can write your code in this editor

obj_game.items_collected += 1;

with (other)
{
    instance_destroy();
}

if (obj_game.items_collected >= obj_game.items_needed)
{
    room_goto(rm_win);
}