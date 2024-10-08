// Change per tower
fire_rate = room_speed / 3;
bullet_speed = 10;

damage = obj_tower_basic_c.damage;
cost = obj_tower_basic_c.cost;
range = obj_tower_basic_c.range;


shooting = false;
objectToShoot = noone;
cooldown = 0;
col = c_white;
placed = false;
dragging = global.dragging;
upgrade_click = false;

tower_level = 1;
level_2_upgrade_cost = 1000;
level_2_upgrade_dmg = 500;
level_3_upgrade_cost = 2000;
level_3_upgrade_dmg = 1000;
