/// @description Insert description here
// You can write your code in this editor

// Collectibles move with the road/world speed
y += obj_game.road_speed;

if (y > room_height + 100)
{
    instance_destroy();
}