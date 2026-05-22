// ===============================
// AUDIO SETUP
// ===============================

// Prevent duplicate audio controllers
if (instance_number(obj_audio) > 1)
{
    instance_destroy();
    exit;
}

persistent = true;

// Volume defaults
if (!variable_global_exists("music_volume")) global.music_volume = 0.35;
if (!variable_global_exists("sfx_volume")) global.sfx_volume = 1.0;
if (!variable_global_exists("collect_volume")) global.collect_volume = 1.0;
if (!variable_global_exists("crash_volume")) global.crash_volume = 1.0;

if (!variable_global_exists("music_handle"))
{
    global.music_handle = noone;
}

if (!variable_global_exists("music_should_play"))
{
    global.music_should_play = true;
}

audio_master_gain(1);