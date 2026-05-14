if (keyboard_check_pressed(ord("W")))
{
    selected_option -= 1;
}

if (keyboard_check_pressed(ord("S")))
{
    selected_option += 1;
}

if (selected_option < 0)
{
    selected_option = 1;
}

if (selected_option > 1)
{
    selected_option = 0;
}
// If the player presses Enter, choose the selected option
if (keyboard_check_pressed(vk_enter))
{
	// If Play Again is selected
 if (selected_option == 0)
	{
	    game_restart();
	}
// If End Game is selected
    if (selected_option == 1)
    {
		
		// Close the game
       game_end();
    }
}

