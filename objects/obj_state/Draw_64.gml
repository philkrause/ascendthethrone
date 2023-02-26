
var guiw = display_get_gui_width()
var guih = display_get_gui_height()
draw_set_color(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_font(font_phase)
draw_set_alpha(.8)
//draw_rectangle(0,0,guiw,guih,false)
draw_set_alpha(1)

if state = states.battleStart {

	draw_text(guiw/2,guih/2,"Battle Start")
}


if (state = states.enemyStart) {
	
	draw_text(guiw/2,guih/2,"Enemy Turn")
	alarm[1] = 3000/room_speed
	
}

if (state = states.enemyAction) {

	show_debug_message("Enemy Turn") 
}



