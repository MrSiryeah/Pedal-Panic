/// @description Insert description here
// You can write your code in this editor

if (obj_game.game_state == "finishing")
{
    if (y < target_y)
    {
        y += obj_game.road_speed;

        if (y >= target_y)
        {
            y = target_y;

            // Stop all road movement
            obj_game.road_target_speed = 0;
            obj_game.road_speed = 0;
            obj_game.KMH = 0;

            // School has arrived, but do NOT show win yet
            obj_game.finish_complete = true;
        }
    }
}