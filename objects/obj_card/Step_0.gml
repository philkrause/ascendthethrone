

//ANIMATION
y += 4
		
if (y >= card_min_y) {
	y = card_min_y
	depth = -1
}
		
//Destroy when out of bounds
if (x > (room_width + sprite_width)){
	instance_destroy()
}



if card_discarded = true {
	scr_push_discard_pile(id)
	instance_destroy(id)
}
