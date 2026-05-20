/// @description Insert description here
// You can write your code in this editor

// Every car from this spawner uses this same lane speed
lane_speed = lerp(lane_speed, lane_target_speed, 0.03);

// Occasionally change lane speed
if (irandom(180) == 0)
{
    lane_target_speed = random_range(3, 5);
}