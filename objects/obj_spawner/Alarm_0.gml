var spawn_delay = irandom_range(180, 380);
var can_spawn = true;
var safe_gap = 420;

// Random chance to skip this spawn
// Lower number = less traffic
var spawn_chance = 45;

if (irandom(100) > spawn_chance)
{
    alarm[0] = spawn_delay;
    exit;
}

// Check same lane only
with (obj_traffic)
{
    if (abs(x - other.x) < 25 && abs(y - other.y) < safe_gap)
    {
        other.can_spawn = false;
    }
}

if (can_spawn)
{
    var car;
    car = instance_create_depth(x, y, -100, obj_traffic);

    car.image_speed = 0;
    car.image_index = irandom_range(0, sprite_get_number(car.sprite_index) - 1);

    // Link car to this lane/spawner
    car.my_spawner = id;
}

alarm[0] = spawn_delay;