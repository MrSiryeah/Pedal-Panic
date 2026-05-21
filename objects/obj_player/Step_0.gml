// ===============================
// SAVE POSITION BEFORE MOVEMENT
// ===============================

var old_x = x;
var old_y = y;

// ===============================
// FINISH AUTO-MOVE
// ===============================

if (obj_game.game_state == "finishing")
{
    var target_x = obj_game.finish_player_x;
    var target_y = obj_game.finish_player_y;

    x = lerp(x, target_x, 0.08);
    y = lerp(y, target_y, 0.08);

    image_alpha = 1;

    // Only show win popup after:
    // 1. School has stopped
    // 2. Player has reached the gate area
    if (obj_game.finish_complete)
    {
        if (point_distance(x, y, target_x, target_y) < 8)
        {
            x = target_x;
            y = target_y;

            obj_game.game_state = "win";
        }
    }

    exit;
}

// ===============================
// PLAYER MOVEMENT
// ===============================

if (keyboard_check(ord("A")))
{
    x -= 10;
}

if (keyboard_check(ord("D")))
{
    x += 10;
}


// ===============================
// WALL COLLISION FIX
// ===============================

// If player enters wall/building area, undo only horizontal movement
if (place_meeting(x, y, obj_wall))
{
    x = old_x;
}

// If the player is still touching a wall because a car pushed them,
// push them gently back toward the road
var safety_count = 0;

while (place_meeting(x, y, obj_wall) && safety_count < 20)
{
    if (x < room_width / 2)
    {
        x += 1;
    }
    else
    {
        x -= 1;
    }

    safety_count += 1;
}


// ===============================
// DAMAGE / FLASH COOLDOWN
// ===============================

if (hit_cooldown > 0)
{
    hit_cooldown -= 1;
    flash_timer += 1;

    if (flash_timer mod 10 < 5)
    {
        image_alpha = 1;
    }
    else
    {
        image_alpha = 0;
    }
}
else
{
    hit_cooldown = 0;
    flash_timer = 0;
    image_alpha = 1;
}