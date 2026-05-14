/// @description Insert description here
// You can write your code in this editor

// Same-direction traffic
// When player speeds up, you drive away from traffic

var player_pull = obj_game.KMH * 0.45;

var final_speed = traffic_speed - player_pull;

final_speed = clamp(final_speed, -3, 3);

y += dir * final_speed;

if (y < -200 || y > room_height + 200) {
    instance_destroy();
}