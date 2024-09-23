// Desired window size
//var window_width = 1920;
//var window_height = 1440;

global.dragging = false;
global.upgrade_exit = false;
global.selected_tower = noone;
global.upgrading = false;

//if os_type == os_windows {
	var window_width = room_width * 3;
	var window_height = room_height * 3;

	// Set the window size
	window_set_size(window_width, window_height);

	//// Optionally, center the window on the screen
	var display_width = display_get_width();
	var display_height = display_get_height();
	window_set_position((display_width - window_width) / 2, (display_height - window_height) / 2);
//}
//if os_browser == browser_not_a_browser {
//else {
	// Adjust HTML5 specific settings here
    display_set_gui_size(800, 480);
//}