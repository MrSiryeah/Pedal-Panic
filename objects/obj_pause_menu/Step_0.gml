// Move selection up with W or Up Arrow
if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
{
    selected_option -= 1;
}

// Move selection down with S or Down Arrow
if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
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
	    global.fade_target_room = global.paused_from_room;
	    global.fade_state = "fade_out";
	}

	// Go to settings screen
	if (selected_option == 1)
	{
	    global.settings_return_room = rm_pause;
		global.fade_target_room = rm_settings;
		global.fade_state = "fade_out";
	}
}