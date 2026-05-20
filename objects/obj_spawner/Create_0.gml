/// @description Insert description here
// You can write your code in this editor

dir = -1;

lane_speed = random_range(3, 5);
lane_target_speed = lane_speed;

// Random start delay so all spawners do not spawn together
alarm[0] = irandom_range(60, 220);