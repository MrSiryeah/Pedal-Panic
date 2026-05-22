/// @description Insert description here
// You can write your code in this editor

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Background image
draw_sprite_stretched(
    spr_title_bg,
    0,
    0,
    0,
    gui_w,
    gui_h
);

// Dark overlay
draw_set_color(c_black);
draw_set_alpha(0.60);
draw_rectangle(0, 0, gui_w, gui_h, false);
draw_set_alpha(1);

// Text setup
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Title
draw_set_color(c_yellow);
draw_text_transformed(gui_w / 2, 120, "SETTINGS", 2.5, 2.5, 0);

draw_set_color(c_white);
draw_text(gui_w / 2, 175, "W/S to move  -  A/D to adjust  -  ENTER on BACK");

var start_y = 280;
var gap = 85;

var label_x = gui_w / 2 - 300;
var bar_x = gui_w / 2 - 120;
var bar_w = 360;
var bar_h = 20;

// MUSIC
var y1 = start_y;

if (selected_slider == 0) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(label_x, y1, "MUSIC");

draw_set_color(make_color_rgb(45, 45, 45));
draw_rectangle(bar_x, y1 - 10, bar_x + bar_w, y1 + bar_h - 10, false);

draw_set_color(c_white);
draw_rectangle(bar_x, y1 - 10, bar_x + (bar_w * global.music_volume), y1 + bar_h - 10, false);

draw_set_color(c_white);
draw_rectangle(bar_x, y1 - 10, bar_x + bar_w, y1 + bar_h - 10, true);

// SFX
var y2 = start_y + gap;

if (selected_slider == 1) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(label_x, y2, "SFX");

draw_set_color(make_color_rgb(45, 45, 45));
draw_rectangle(bar_x, y2 - 10, bar_x + bar_w, y2 + bar_h - 10, false);

draw_set_color(c_white);
draw_rectangle(bar_x, y2 - 10, bar_x + (bar_w * global.sfx_volume), y2 + bar_h - 10, false);

draw_set_color(c_white);
draw_rectangle(bar_x, y2 - 10, bar_x + bar_w, y2 + bar_h - 10, true);

// COLLECT
var y3 = start_y + gap * 2;

if (selected_slider == 2) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(label_x, y3, "COLLECT");

draw_set_color(make_color_rgb(45, 45, 45));
draw_rectangle(bar_x, y3 - 10, bar_x + bar_w, y3 + bar_h - 10, false);

draw_set_color(c_white);
draw_rectangle(bar_x, y3 - 10, bar_x + (bar_w * global.collect_volume), y3 + bar_h - 10, false);

draw_set_color(c_white);
draw_rectangle(bar_x, y3 - 10, bar_x + bar_w, y3 + bar_h - 10, true);

// CRASH
var y4 = start_y + gap * 3;

if (selected_slider == 3) draw_set_color(c_yellow); else draw_set_color(c_white);
draw_text(label_x, y4, "CRASH");

draw_set_color(make_color_rgb(45, 45, 45));
draw_rectangle(bar_x, y4 - 10, bar_x + bar_w, y4 + bar_h - 10, false);

draw_set_color(c_white);
draw_rectangle(bar_x, y4 - 10, bar_x + (bar_w * global.crash_volume), y4 + bar_h - 10, false);

draw_set_color(c_white);
draw_rectangle(bar_x, y4 - 10, bar_x + bar_w, y4 + bar_h - 10, true);

// BACK
if (selected_slider == 4)
{
    draw_set_color(c_yellow);
    draw_text_transformed(gui_w / 2, start_y + gap * 4, "> BACK <", 1.6, 1.6, 0);
}
else
{
    draw_set_color(c_white);
    draw_text_transformed(gui_w / 2, start_y + gap * 4, "BACK", 1.6, 1.6, 0);
}