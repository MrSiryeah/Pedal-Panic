// Stop spawning when the game is no longer in normal gameplay
if (obj_game.game_state != "playing")
{
    alarm[0] = 60;
    exit;
}

// Random delay between spawn attempts
var spawn_delay = irandom_range(180, 380);

// Random chance to actually spawn
// Lower number = less traffic
var spawn_chance = 45;

if (irandom(100) > spawn_chance)
{
    alarm[0] = spawn_delay;
    exit;
}

var can_spawn = true;
var safe_gap = 420;

// Check only this same lane
with (obj_traffic_down)
{
    if (abs(x - other.x) < 25 && abs(y - other.y) < safe_gap)
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

    // Link this car to the lane/spawner speed
    car.my_spawner = id;
}

alarm[0] = spawn_delay;