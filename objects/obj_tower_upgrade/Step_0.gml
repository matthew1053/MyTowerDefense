
if (mouse_check_button_released(mb_left) && !position_meeting(mouse_x, mouse_y, id)
&& !position_meeting(mouse_x, mouse_y, global.selected_tower)
&& !position_meeting(mouse_x, mouse_y, obj_speed_1X)
&& !position_meeting(mouse_x, mouse_y, obj_speed_2X)
&& !position_meeting(mouse_x, mouse_y, obj_speed_3X)
&& !position_meeting(mouse_x, mouse_y, obj_start_button))
 {
    //show_debug_message("Left mouse button released!");
	
	//global.upgrade_exit = true;
	//global.upgrading = false;
	//global.selected_tower = noone;
	//instance_destroy();
	//instance_destroy(obj_upgrade_exit);
	//instance_destroy(obj_upgrade_button);
	//instance_destroy(obj_destroy_button);
	scr_close_update_window();
}