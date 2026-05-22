/// @description Insert description here
// You can write your code in this editor

dir = 1;

lane_speed = random_range(2.8, 3.8);
lane_target_speed = lane_speed;

// Faster first spawn, but desynced
alarm[0] = irandom_range(20, 90);