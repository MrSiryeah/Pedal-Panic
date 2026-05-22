/// @description Insert description here
// You can write your code in this editor

// Same-lane speed changes very slowly.
// This keeps cars in the same lane from catching each other too quickly.
lane_speed = lerp(lane_speed, lane_target_speed, 0.01);

// Rare small speed changes only
if (irandom(420) == 0)
{
    lane_target_speed = random_range(3.6, 4.6);
}