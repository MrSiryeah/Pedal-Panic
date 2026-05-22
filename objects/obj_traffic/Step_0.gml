/// @description Insert description here
// You can write your code in this editor

var lane_speed = 3;

if (instance_exists(my_spawner))
{
    lane_speed = my_spawner.lane_speed;
}

// Same-side traffic slows when player speeds up
var final_speed;

if (obj_game.KMH >= 8)
{
    final_speed = lane_speed * 0.28;
}
else if (obj_game.KMH <= 3)
{
    final_speed = lane_speed * 1.0;
}
else
{
    final_speed = lane_speed * 0.6;
}

final_speed = max(final_speed, 1.1);

// Same-side traffic moves UP
y -= final_speed;

if (y < -200 || y > room_height + 200)
{
    instance_destroy();
}