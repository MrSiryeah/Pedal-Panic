/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_pause, 6, false);

// Save the room we paused from
global.paused_from_room = room;

// Go to pause menu room
room_goto(rm_pause);