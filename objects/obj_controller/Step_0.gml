//var win_width = display_get_width();
//var win_height = display_get_height();

//// Set the game window size to match the browser window size
//window_set_size(win_width, win_height);
//display_set_gui_size(win_width, win_height);

//if global.selected_tower != noone {
//	show_debug_message(string(global.selected_tower) + " " + string(global.selected_tower.damage));
//}


var window_width = room_width * 3;
var window_height = room_height * 3;

// Set the window size
window_set_size(window_width, window_height);

//// Optionally, center the window on the screen
var display_width = display_get_width();
var display_height = display_get_height();
window_set_position((display_width - window_width) / 2, (display_height - window_height) / 2);
	

if os_browser != browser_not_a_browser {
	// Adjust HTML5 specific settings here
	var window_width = room_width * 2;
	var window_height = room_height * 2;
	
	
	window_set_position((display_width - window_width) / 2, (display_height - window_height) / 2);
	
	// Set the window size
	window_set_size(window_width, window_height);
    display_set_gui_size(800, 480);
}