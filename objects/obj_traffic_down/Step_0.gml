// ===============================
// OPPOSITE / ONCOMING TRAFFIC
// ===============================

// Default lane speed in case spawner is missing
var lane_speed = 2.5;

// Get lane speed from the spawner
if (instance_exists(my_spawner))
{
    lane_speed = my_spawner.lane_speed;
}

// Road speed from obj_game
var road_speed = obj_game.road_speed;

// Oncoming cars must always move faster than the road
// Otherwise they look like they are reversing / moonwalking
var extra_speed = 2.2;

var final_speed = road_speed + lane_speed + extra_speed;

// Safety: never allow final speed to be slower than the road
final_speed = max(final_speed, road_speed + 1.5);

// Move DOWN the screen
y += final_speed;

// Destroy when off screen
if (y < -200 || y > room_height + 200)
{
    instance_destroy();
}