var previous_font = draw_get_font();

// Hover drawing
if (hover) {
	//draw_set_color(c_black);
	//draw_rectangle(mouse_x - 100, mouse_y - 150, mouse_x + 100, mouse_y - 50, false);
	//draw_set_color(c_white);
	//draw_text(mouse_x - 75, mouse_y - 110, "This is a tooltip!");
	
	    // Calculate the position of the tooltip
    //var tooltip_x = x - 75; // Adjust as needed
    //var tooltip_y = y + 50; // Adjust as needed
	
	var tooltip_x = 665; // Adjust as needed
    var tooltip_y = 100; // Adjust as needed

    // Draw the tooltip background
    //draw_set_color(c_black);
	//draw_set_alpha(0.8); // 0.8 is 80% opacity, you can adjust this value as needed
    //draw_rectangle(tooltip_x, tooltip_y, tooltip_x + 100, tooltip_y + 75, false);

    // Draw the tooltip text
    draw_set_color(c_black);

	draw_set_font(fnt_hover_stats_bold);
	draw_text(tooltip_x + 10, tooltip_y + 10, tower_name);
	
	draw_set_font(fnt_hover_stats);
    draw_text(tooltip_x + 10, tooltip_y + 30, "Damage: " + string(damage));
    draw_text(tooltip_x + 10, tooltip_y + 50, "Fire Rate: " + string(fire_rate));
    draw_text(tooltip_x + 10, tooltip_y + 70, "Range: " + string(range));
	draw_set_font(previous_font);
	draw_set_color(c_white);
}