/// @description Insert description here
// You can write your code in this editor

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Draw title background image
draw_sprite_stretched(
    spr_title_bg,
    0,
    0,
    0,
    gui_w,
    gui_h
);

// Dark overlay for readability
draw_set_color(c_black);
draw_set_alpha(0.35);
draw_rectangle(0, 0, gui_w, gui_h, false);
draw_set_alpha(1);

// Text setup
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Title
draw_set_color(c_white);
draw_text_transformed(gui_w / 2, 180, "PEDAL PANIC", 3, 3, 0);

// Start button
if (selected_option == 0)
{
    draw_set_color(c_yellow);
    draw_text_transformed(gui_w / 2, 420, "> START <", 2, 2, 0);
}
else
{
    draw_set_color(c_white);
    draw_text_transformed(gui_w / 2, 420, "START", 2, 2, 0);
}

// Settings button
if (selected_option == 1)
{
    draw_set_color(c_yellow);
    draw_text_transformed(gui_w / 2, 500, "> SETTINGS <", 2, 2, 0);
}
else
{
    draw_set_color(c_white);
    draw_text_transformed(gui_w / 2, 500, "SETTINGS", 2, 2, 0);
}

// Instructions
draw_set_color(c_white);
draw_text(gui_w / 2, gui_h - 80, "W/S or Arrow Keys to move  •  ENTER to select");