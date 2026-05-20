/// @description Insert description here
// You can write your code in this editor

var spawn_x = choose(300, 390, 480, 570, 660);
var spawn_y = -80;

var item = instance_create_depth(spawn_x, spawn_y, -80, obj_collectible);

item.image_speed = 0;
item.image_index = irandom_range(0, sprite_get_number(item.sprite_index) - 1);

alarm[0] = irandom_range(90, 180);