if(!placed) {
	instance_destroy();
	global.coins += cost;
	global.dragging = false;
}