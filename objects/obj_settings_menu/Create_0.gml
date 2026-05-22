/// @description Insert description here
// You can write your code in this editor

selected_slider = 0;

// 0 = Music
// 1 = SFX
// 2 = Collect
// 3 = Crash
// 4 = Back

if (!variable_global_exists("music_volume")) global.music_volume = 0.35;
if (!variable_global_exists("sfx_volume")) global.sfx_volume = 1.0;
if (!variable_global_exists("collect_volume")) global.collect_volume = 1.0;
if (!variable_global_exists("crash_volume")) global.crash_volume = 1.0;