/// @description Insert description here
// You can write your code in this editor

// Move selection up
if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
{
    selected_option -= 1;
}

// Move selection down
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
    // Start game
    if (selected_option == 0)
    {
      global.fade_target_room = rm_malteseroads;
	  global.fade_state = "fade_out";
    }

    // Settings
    if (selected_option == 1)
    {
        global.settings_return_room = rm_title;
		global.fade_target_room = rm_settings;
		global.fade_state = "fade_out";
    }
}