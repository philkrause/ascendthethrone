draw_self()

image_index += image_speed



//Draw Health
var spr_width = 16
var hp_gap = 5
var allheart_width = (hp_gap+spr_width) * hp
var offset = allheart_width/2


//Draw Health
for(var i=0;i<hp;i++){
	
	var dx = (x) + i*(spr_width+hp_gap) - offset
	
	draw_sprite_ext(
		spr_hearts,
		hp_spr,
		dx,
		y + hp_y,
		1,1,0,c_white,1
	)
}

//Rest animation
if resting == true {
	if (image_index >= 12) {
		image_index = 0
	}
}

//Targeted
if targeted == true {
	image_blend = make_colour_hsv(0, 155, 255);
} else image_blend = c_white
