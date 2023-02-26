var guiw = display_get_gui_width()

//Draw Player Mana
for(var i=0;i<global.mana;i++){
	gap = i*mana_gap
	draw_set_halign(fa_center)
	var mana_x = guiw/2 -50
	var mana_y = 40
	draw_sprite_ext(
		spr_items,
		mana_spr-1,
		mana_x+gap,
		mana_y,
		2,2,0,c_white,1
	)
}
