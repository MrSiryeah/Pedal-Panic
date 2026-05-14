/// @description Insert description here
// You can write your code in this editor

var road_speed = obj_game.KMH * 0.75;
var extra_speed = 1.5;

var final_speed = road_speed + extra_speed + traffic_speed;

final_speed = clamp(final_speed, 3, 9);

y += final_speed;

if (y < -200 || y > room_height + 200) {
    instance_destroy();
}