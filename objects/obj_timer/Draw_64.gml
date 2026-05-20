// ===============================
// GUI SETUP
// ===============================

var gui_w = display_get_gui_width();


// ===============================
// COLLECTIBLE PROGRESS BAR
// ===============================

var bar_w = 520;
var bar_h = 18;

var bar_x = (gui_w / 2) - (bar_w / 2);
var bar_y = 35;


// Avoid divide-by-zero errors
var progress = 0;

if (obj_game.items_needed > 0)
{
    progress = obj_game.items_collected / obj_game.items_needed;
}

progress = clamp(progress, 0, 1);


// Background bar
draw_set_color(make_color_rgb(35, 35, 35));
draw_rectangle(
    bar_x,
    bar_y,
    bar_x + bar_w,
    bar_y + bar_h,
    false
);


// Filled bar
draw_set_color(c_white);
draw_rectangle(
    bar_x,
    bar_y,
    bar_x + (bar_w * progress),
    bar_y + bar_h,
    false
);


// Bar outline
draw_set_color(c_white);
draw_rectangle(
    bar_x,
    bar_y,
    bar_x + bar_w,
    bar_y + bar_h,
    true
);

// ===============================
// PLAYER HEAD MARKER
// ===============================

// End point of the filled progress bar
var progress_tip_x = bar_x + (bar_w * progress);
var marker_y = bar_y + (bar_h / 2);

// Your head sprite is 60x60.
// Since it faces right, shift it left by half its width.
// This makes the face/front of the head sit on the progress tip.
var head_scale = 1;
var head_w = sprite_get_width(spr_player_head) * head_scale;

var marker_x = progress_tip_x - (head_w / 2);

draw_sprite_ext(
    spr_player_head,
    0,
    marker_x,
    marker_y,
    head_scale,
    head_scale,
    0,
    c_white,
    1
);

// ===============================
// ITEM COUNT TEXT
// ===============================

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(
    gui_w / 2,
    bar_y + 35,
    string(obj_game.items_collected) + " / " + string(obj_game.items_needed) + " ITEMS"
);


// ===============================
// TIMER
// ===============================

var seconds_left = ceil(timer_frames / room_speed);

var minutes = seconds_left div 60;
var seconds = seconds_left mod 60;

var seconds_text = string(seconds);

if (seconds < 10)
{
    seconds_text = "0" + seconds_text;
}

var timer_text = "TIME " + string(minutes) + ":" + seconds_text;


// Timer underneath progress bar
var timer_x = gui_w / 2;
var timer_y = bar_y + 62;


// Warning shake when time is low
var shake_x = 0;
var shake_y = 0;

if (seconds_left <= 10)
{
    shake_x = irandom_range(-3, 3);
    shake_y = irandom_range(-2, 2);
    draw_set_color(c_red);
}
else
{
    draw_set_color(c_white);
}


// Draw bigger centred timer
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text_transformed(
    timer_x + shake_x,
    timer_y + shake_y,
    timer_text,
    2,
    2,
    0
);