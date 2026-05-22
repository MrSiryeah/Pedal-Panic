/// @description Insert description here
// You can write your code in this editor

// Oncoming lane speed changes slowly so cars stay consistent
lane_speed = lerp(lane_speed, lane_target_speed, 0.015);

// Occasionally change lane speed, but not too much
if (irandom(300) == 0)
{
    lane_target_speed = random_range(2.8, 3.8);
}