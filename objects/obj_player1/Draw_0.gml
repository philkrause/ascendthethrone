
//Draw Player Mana
for(var i=0;i<mana;i++){
	gap = i*mana_gap
	var mana_x = room_width/2 -90
	var mana_y = 40
	draw_sprite_ext(
		spr_items,
		mana_spr-1,
		mana_x+gap,
		mana_y,
		2,2,0,c_white,1
	)
}
