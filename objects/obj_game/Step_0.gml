// ===============================
// ROAD SPEED CONTROL
// ===============================

if (keyboard_check(ord("W")))
{
    road_target_speed = 10;
}
else if (keyboard_check(ord("S")))
{
    road_target_speed = 2.5;
}
else
{
    road_target_speed = 5;
}

// Smooth speed change
road_speed = lerp(road_speed, road_target_speed, 0.08);

// Keep old KMH variable working
KMH = road_speed;