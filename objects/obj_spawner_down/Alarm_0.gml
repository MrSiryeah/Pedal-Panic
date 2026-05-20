/// @description Insert description here
// You can write your code in this editor

var spawn_delay = irandom_range(120, 260);
var can_spawn = true;
var safe_gap = 320;

with (obj_traffic_down)
{
    if (abs(x - other.x) < 20 && abs(y - other.y) < safe_gap)
    {
        other.can_spawn = false;
    }
}

if (can_spawn)
{
    var car;
    car = instance_create_depth(x, y, -100, obj_traffic_down);

    car.image_speed = 0;
    car.image_index = irandom_range(0, sprite_get_number(car.sprite_index) - 1);

    // Link car to this spawner/lane
    car.my_spawner = id;
}

alarm[0] = spawn_delay;