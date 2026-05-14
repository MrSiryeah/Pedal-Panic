/// @description Insert description here
// You can write your code in this editor

// Opposite traffic
// It must always move faster than the road

var road_speed = obj_game.KMH;
var extra_speed = 1.2;

var final_speed = road_speed + extra_speed + traffic_speed;

// Move DOWN the screen, same as road, but faster than road
y += final_speed;

if (y < -200 || y > room_height + 200) {
    instance_destroy();
}