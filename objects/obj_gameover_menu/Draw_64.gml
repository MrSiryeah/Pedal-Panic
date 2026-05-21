// Align all text to the centre
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw black background
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// Draw the game over title
draw_set_color(c_red);
draw_text(display_get_gui_width() / 2, 180, "GAME OVER");

// Draw Play Again option only
draw_set_color(c_yellow);
draw_text(display_get_gui_width() / 2, 300, "> PLAY AGAIN <");