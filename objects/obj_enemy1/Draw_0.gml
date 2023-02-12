draw_self()

image_index += image_speed



//Draw Health
var spr_width = 16
var hp_gap = 5
var allheart_width = (hp_gap+spr_width) * hp
var offset = allheart_width/2
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
