if(hp <= 0)
{
	audio_play_sound(snd_enemy_death, 1, false);
	instance_destroy();
}
if (path_index == -1) {
	// TODO: Come up with another method of ending game
	show_message("Game Over!");
	game_restart();	
}