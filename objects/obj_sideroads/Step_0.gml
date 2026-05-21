/// @description Insert description here
// You can write your code in this editor

// Stop side roads when player has reached the school
if (obj_game.game_state == "win")
{
    exit;
}

// Move with road speed
y += obj_game.road_speed;

// Height of the side road image
var h = sprite_get_height(sprite_index) * abs(image_yscale);

// Wrap early so there is never black space
if (y >= h)
{
    y -= h * 2;
}