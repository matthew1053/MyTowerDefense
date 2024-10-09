fire_rate = room_speed / 2;
bullet_speed = 10;

cost = obj_tower_range_c.cost;
range = obj_tower_range_c.range;
damage = obj_tower_range_c.damage;

shooting = false;
objectToShoot = noone;
cooldown = 0;
col = c_white;
placed = false;
dragging = global.dragging;

tower_level = 1;
level_2_upgrade_cost = 1000;
level_2_upgrade_dmg = 500;
level_3_upgrade_cost = 2000;
level_3_upgrade_dmg = 1000;