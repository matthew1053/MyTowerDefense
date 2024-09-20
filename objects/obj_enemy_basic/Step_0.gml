if(hp <= 0)
{
	instance_destroy();
}
if (path_index == -1) {
	// TODO: Come up with another method of ending game
	show_message("Game Over!");
	game_restart();	
}