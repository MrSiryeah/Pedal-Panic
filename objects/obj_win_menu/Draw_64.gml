/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);
draw_set_font(-1);

draw_text(display_get_gui_width() / 2, 250, "YOU WIN!");
draw_text(display_get_gui_width() / 2, 320, "You collected all school items");
draw_text(display_get_gui_width() / 2, 400, "Press ENTER to play again");