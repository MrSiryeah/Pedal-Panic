// Stop spawning if not actively playing
if (obj_game.game_state != "playing")
{
    alarm[0] = 60;
    exit;
}

// Collectible road positions
// These cover both left and right sides of the road
var spawn_x = choose(
    120,  // far left lane
    220,  // left-middle lane
    320,  // centre-left
    430,  // centre-right
    540,  // right-middle
    650   // far right lane
);

var spawn_y = -80;

var item;
item = instance_create_depth(spawn_x, spawn_y, -80, obj_collectible);

item.image_speed = 0;
item.image_index = irandom_range(0, sprite_get_number(item.sprite_index) - 1);

// Spawn delay
alarm[0] = irandom_range(90, 180);