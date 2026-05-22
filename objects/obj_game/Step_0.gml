// ===============================
// FULL GAMEPLAY RESET
// ===============================

if (variable_global_exists("reset_gameplay"))
{
    if (global.reset_gameplay)
    {
        global.reset_gameplay = false;

        // Reset game speed
        KMH = 5;
        road_speed = 5;
        road_target_speed = 5;

        // Reset collectibles
        items_collected = 0;
        items_needed = 10;

        // Reset state
        game_state = "playing";

        finish_started = false;
        finish_complete = false;
        win_sound_played = false;

        // Remove old spawned objects
        with (obj_traffic)
        {
            instance_destroy();
        }

        with (obj_traffic_down)
        {
            instance_destroy();
        }

        with (obj_collectible)
        {
            instance_destroy();
        }

        with (obj_school)
        {
            instance_destroy();
        }

        // Reset timer
        with (obj_timer)
        {
            timer_seconds = 40;
            timer_frames = timer_seconds * room_speed;
            gameover_triggered = false;
        }

        // Reset player
        with (obj_player)
        {
            x = 360;
            y = 560;

            image_alpha = 1;

            hit_cooldown = 0;
            flash_timer = 0;

            depth = -1000;
        }

        // Reset spawners so they start cleanly
        with (obj_spawner)
        {
            lane_speed = random_range(3.6, 4.6);
            lane_target_speed = lane_speed;
            alarm[0] = irandom_range(40, 140);
        }

        with (obj_spawner_down)
        {
            lane_speed = random_range(2.8, 3.8);
            lane_target_speed = lane_speed;
            alarm[0] = irandom_range(20, 90);
        }

        with (obj_collectible_spawner)
        {
            alarm[0] = 60;
        }
    }
}
// ===============================
// NORMAL PLAYING SPEED
// ===============================

if (game_state == "playing")
{
    if (keyboard_check(ord("W")) || keyboard_check(vk_up))
    {
        road_target_speed = 10;
    }
    else if (keyboard_check(ord("S")) || keyboard_check(vk_down))
    {
        road_target_speed = 2.5;
    }
    else
    {
        road_target_speed = 5;
    }
}


// ===============================
// FINISHING STATE
// ===============================

if (game_state == "finishing")
{
    // Keep world moving until school reaches stop point
    road_target_speed = 5;

    // Create school once
    if (!finish_started)
    {
        finish_started = true;

        var school;
        school = instance_create_depth(
            room_width / 2,
            -1000,
            -300,
            obj_school
        );
    }
}


// ===============================
// WIN STATE
// ===============================

if (game_state == "win")
{
    road_target_speed = 0;
    road_speed = 0;
    KMH = 0;
}


// ===============================
// SMOOTH ROAD SPEED
// ===============================

if (game_state != "win")
{
    road_speed = lerp(road_speed, road_target_speed, 0.08);
}

KMH = road_speed;