/// @description Insert description here
// You can write your code in this editor
draw_self()



for(var i=0;i<hp;i++){
	gap = i*hp_gap
	draw_sprite_ext(
		spr_hearts,
		hp_spr,
		x + (hp_x+gap),
		y + hp_y,
		.9,.9,0,c_white,1
	)
}



