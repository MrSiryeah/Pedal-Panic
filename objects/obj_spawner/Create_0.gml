/// @description Insert description here
// You can write your code in this editor

dir = -1;

lane_speed = random_range(3.6, 4.6);
lane_target_speed = lane_speed;

// Desync the two right-side lanes
alarm[0] = irandom_range(40, 140);