/// @description Insert description here
// You can write your code in this editor

// Stop spawning if not actively playing
if (obj_game.game_state != "playing")
{
    alarm[0] = 60;
    exit;
}

// Road lane positions
// Adjust these numbers if one is too close to the wall
var spawn_x = choose(230, 330, 430, 530, 630);
var spawn_y = -80;

var item;
item = instance_create_depth(spawn_x, spawn_y, -80, obj_collectible);

item.image_speed = 0;
item.image_index = irandom_range(0, sprite_get_number(item.sprite_index) - 1);

// Spawn delay
alarm[0] = irandom_range(90, 180);