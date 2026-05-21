/// @description Insert description here
// You can write your code in this editor

// Player damage cooldown
hit_cooldown = 0;

// 3 second protection after crashing
hit_cooldown_max = room_speed * 3;

// Flash timer for opacity effect
flash_timer = 0;

// How strongly the player is pushed away from cars
crash_push = 12;

// Make sure the player is drawn above roads and traffic
depth = -1000;