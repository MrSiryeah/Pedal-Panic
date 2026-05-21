/// @description Insert description here
// You can write your code in this editor

// Stop main road when player has reached the school
if (obj_game.game_state == "win")
{
    exit;
}

// Move road with world speed
y += obj_game.road_speed;

// Your road tile height is 160px
var tile_h = 160;

// Your room height is 1000px.
// You have road tiles from about -320 to 960,
// so the loop height should cover the whole road strip.
var loop_h = 1440;

// When a road tile goes below the screen,
// send it back to the top of the road strip
if (y >= room_height + tile_h)
{
    y -= loop_h;
}