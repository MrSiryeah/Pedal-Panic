// ===============================
// NORMAL PLAYING SPEED
// ===============================

if (game_state == "playing")
{
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