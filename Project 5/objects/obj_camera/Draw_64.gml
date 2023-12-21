/// @description HUD

if (instance_exists(obj_player)){
	draw_sprite(spr_healthbar_back, 1, 8, 9);
	draw_sprite_ext(spr_healthbar_front, 1, 8, 9, max(0, obj_player.hp/obj_player.max_hp), 1, 0, c_white, 1);
	draw_text(12, 20, "HP: " + string(obj_player.hp));
	draw_text(12, 40, "Score: " + string(obj_player.myscore));
}

