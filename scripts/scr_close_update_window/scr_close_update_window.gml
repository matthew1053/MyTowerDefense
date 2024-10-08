// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_close_update_window() 
{
	global.upgrade_exit = true;
	global.upgrading = false;
	global.selected_tower = noone;
	instance_destroy(obj_upgrade_exit);
	instance_destroy(obj_tower_upgrade);
	instance_destroy(obj_upgrade_button);
	instance_destroy(obj_destroy_button);
}