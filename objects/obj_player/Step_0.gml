//Player Movement//

if keyboard_check(ord("A"))
{
	x=x-10
}
if keyboard_check(ord("D"))
{
	x=x+10
}

// If the player has recently crashed
if (hit_cooldown > 0)
{
    // Reduce cooldown every frame
    hit_cooldown -= 1;

    // Increase flash timer
    flash_timer += 1;

    // Flash every few frames
    if (flash_timer mod 10 < 5)
    {
        image_alpha = 1; // Fully visible
    }
    else
    {
        image_alpha = 0; // Invisible
    }
}
else
{
    // Cooldown finished
    hit_cooldown = 0;
    flash_timer = 0;

    // Make sure player is visible again
    image_alpha = 1;
}

// Stop player from going through invisible walls
if (place_meeting(x, y, obj_wall))
{
    x = xprevious;
    y = yprevious;
}