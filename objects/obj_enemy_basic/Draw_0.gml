draw_self();

draw_healthbar(x - 15, y -15, x + 15, y - 10, hp, c_black & $FFFFFF, c_red & $FFFFFF, c_lime & $FFFFFF, 0, ((c_black>>24) != 0), (($FFFFFFFF>>24) != 0));