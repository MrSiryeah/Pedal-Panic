// Move selection up with W
if (keyboard_check_pressed(ord("W")))
{
    selected_option -= 1;
}

// Move selection down with S
if (keyboard_check_pressed(ord("S")))
{
    selected_option += 1;
}

// Wrap selection
if (selected_option < 0)
{
    selected_option = 1;
}

if (selected_option > 1)
{
    selected_option = 0;
}

// Select option with Enter
if (keyboard_check_pressed(vk_enter))
{
    // Continue game
    if (selected_option == 0)
    {
        room_goto(global.paused_from_room);
    }

    // Go to settings screen
    if (selected_option == 1)
    {
        room_goto(rm_settings);
    }
}