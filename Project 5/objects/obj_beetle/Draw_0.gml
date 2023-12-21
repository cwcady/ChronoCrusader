/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_beetle, image_frame, x, y, image_xscale, image_yscale, 0, c_white, 1);
if(flash > 0)
{
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}