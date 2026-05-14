/// @description Insert description here
// You can write your code in this editor

// Same-side traffic
// Player should slowly overtake/pass cars when speeding up

var final_speed;

if (obj_game.KMH >= 8)
{
    final_speed = traffic_speed * 0.15; // much slower when player boosts
}
else if (obj_game.KMH <= 3)
{
    final_speed = traffic_speed * 1.0;
}
else
{
    final_speed = traffic_speed * 0.6;
}

// Keep cars moving, but slow enough to pass
final_speed = max(final_speed, 0.6);

// Move UP the screen
y -= final_speed;

if (y < -200 || y > room_height + 200)
{
    instance_destroy();
}