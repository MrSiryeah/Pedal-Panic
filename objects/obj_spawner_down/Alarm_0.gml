if (obj_game.game_state != "playing")
{
    alarm[0] = 60;
    exit;
}

// More frequent, but still controlled
var spawn_delay = irandom_range(100, 210);

var can_spawn = true;
var safe_gap = 360;

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

    car.my_spawner = id;
}

alarm[0] = spawn_delay;