if (prog < 1) then prog += .05;
//Card Movement

//ANIMATION
y += 4
		
if (y >= card_min_y) {
	y = card_min_y
	depth = -1
}
//Hover
if (instance_position(mouse_x,mouse_y,id) & !card_selected = true) {
	
		y -= 10
		if y <= card_max_y { y = card_max_y }
	
		depth -= instance_count -1
} 


		
//Destroy when out of bounds
if (x > (room_width + sprite_width)){
	instance_destroy()
}


