/// @description Insert description here
// You can write your code in this editor

// Move selection up
if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
{
    selected_slider -= 1;
}

// Move selection down
if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
{
    selected_slider += 1;
}

// Wrap
if (selected_slider < 0)
{
    selected_slider = 4;
}

if (selected_slider > 4)
{
    selected_slider = 0;
}

// Adjust volume
var change_amount = 0.05;

if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
{
    if (selected_slider == 0) global.music_volume -= change_amount;
    if (selected_slider == 1) global.sfx_volume -= change_amount;
    if (selected_slider == 2) global.collect_volume -= change_amount;
    if (selected_slider == 3) global.crash_volume -= change_amount;
}

if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
{
    if (selected_slider == 0) global.music_volume += change_amount;
    if (selected_slider == 1) global.sfx_volume += change_amount;
    if (selected_slider == 2) global.collect_volume += change_amount;
    if (selected_slider == 3) global.crash_volume += change_amount;
}

// Clamp volume values
global.music_volume = clamp(global.music_volume, 0, 1);
global.sfx_volume = clamp(global.sfx_volume, 0, 1);
global.collect_volume = clamp(global.collect_volume, 0, 1);
global.crash_volume = clamp(global.crash_volume, 0, 1);

// Apply music live
audio_sound_gain(snd_music_game, global.music_volume, 0);

// Back
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape))
{
    if (selected_slider == 4 || keyboard_check_pressed(vk_escape))
    {
        if (variable_global_exists("settings_return_room"))
        {
            room_goto(global.settings_return_room);
        }
        else
        {
            room_goto(rm_title);
        }
    }
}