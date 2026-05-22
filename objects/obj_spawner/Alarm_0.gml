if (obj_game.game_state != "playing")
{
    alarm[0] = 60;
    exit;
}

// Right-side traffic should feel consistent, not bursty
var spawn_delay = irandom_range(140, 240);

can_spawn = true;
lane_car_count = 0;

// Bigger gap because these cars move slowly when player speeds up
var safe_gap = 390;

// Do not spawn far below the room.
// This fixes the "late spawn" problem.
var spawn_y = room_height + 40;

with (obj_traffic)
{
    // Only check this exact lane
    if (abs(x - other.x) < 25)
    {
        // Count cars already in or near the screen
        if (y > -160 && y < room_height + 120)
        {
            other.lane_car_count += 1;
        }

        // Do not spawn if a car is too close to the spawn area
        if (abs(y - spawn_y) < safe_gap)
        {
            other.can_spawn = false;
        }
    }
}

// Prevent a lane from filling with too many cars
if (lane_car_count >= 2)
{
    can_spawn = false;
}

if (can_spawn)
{
    var car;
    car = instance_create_depth(x, spawn_y, -100, obj_traffic);

    car.image_speed = 0;
    car.image_index = irandom_range(0, sprite_get_number(car.sprite_index) - 1);

    // Link car to this lane/spawner
    car.my_spawner = id;
}

alarm[0] = spawn_delay;