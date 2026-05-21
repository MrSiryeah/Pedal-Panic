// Only take damage if cooldown is finished
if (hit_cooldown <= 0)
{
    // Play crash sound once
    audio_play_sound(snd_crash, 6, false);

    // Push only horizontally, not vertically
    if (x < other.x)
    {
        x -= crash_push;
    }
    else
    {
        x += crash_push;
    }

    // Remove 5 seconds from timer
    obj_timer.timer_frames -= 5 * room_speed;

    // Stop timer going below 0
    if (obj_timer.timer_frames < 0)
    {
        obj_timer.timer_frames = 0;
    }

    // Start cooldown
    hit_cooldown = hit_cooldown_max;
}