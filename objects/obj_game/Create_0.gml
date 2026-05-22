win_sound_played = false;
// ===============================
// GAME SPEED
// ===============================

KMH = 5;

road_speed = 5;
road_target_speed = 5;


// ===============================
// COLLECTIBLE PROGRESS
// ===============================

items_collected = 0;
items_needed = 10;


// ===============================
// GAME STATE
// ===============================

game_state = "playing";


// ===============================
// FINISH / SCHOOL ENDING
// ===============================

finish_started = false;
finish_complete = false;

// Where the player should move before the win popup
finish_player_x = room_width / 1.5;
finish_player_y = 650;

// Gameplay room should stay persistent for pause menu
room_set_persistent(rm_malteseroads, true);