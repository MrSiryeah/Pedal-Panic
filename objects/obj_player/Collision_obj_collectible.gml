// Add collectible progress
obj_game.items_collected += 1;

// Add 2 seconds to the timer
with (obj_timer)
{
    timer_frames += room_speed * 2;
}

// Destroy collected item
with (other)
{
    instance_destroy();
}

// Win condition
if (obj_game.items_collected >= obj_game.items_needed)
{
    room_goto(rm_win);
}