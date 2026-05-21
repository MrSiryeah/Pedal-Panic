/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

// Keep school centred horizontally
x = room_width / 2;

// Get sprite origin and size
var spr_h = sprite_get_height(sprite_index);
var spr_yoff = sprite_get_yoffset(sprite_index);

// Start with the TOP of the school just above the screen
y = -spr_h + spr_yoff;

// Stop when about half of the school image is visible
// Smaller number = less school visible
// Bigger number = more school visible
target_y = -350 + spr_yoff;

// Make sure school draws above the road
depth = -300;