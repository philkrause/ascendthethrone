//draw_self()
//Draw Line


//Draw Card
draw_sprite_ext(card_sprite,card_image,x,y,.4,.4,0,c_white,1)

//Draw Title
draw_set_font(font_title)
draw_set_color(c_white)
draw_set_halign(fa_center)

var name_x = sprite_get_width(id)
var name_y = sprite_get_height(id)-100

draw_text_ext(x+name_x,y+name_y,string(card_name),10,200)


//Draw cost amount
for(var i=0;i<card_cost;i++){
	
	gap = i * cost_gap
	
	draw_sprite_ext(
		spr_items,
		cost_spr-1,
		x + cost_x,
		y + (cost_y+gap),
		1,1,0,c_white,1
	) 
}

//Draw Description
//draw_text_transformed(x+description_x,y+description_y,string(card_description),.5,.5,0)
var description_x = sprite_get_width(id)
var description_y = sprite_get_height(id) + 50
draw_set_font(font_description)
draw_set_color(c_purple)
draw_text_ext(x+description_x,y+description_y,string(card_description),10,80)

//Draw Party Requirements	
if (card_warrior = true) { draw_sprite_ext(spr_items, req_warrior_spr, (x + partyreq_x), (y + partyreq_y), 1, 1, 0, c_white, 1) } 
if (card_mage = true)draw_sprite_ext(spr_items, req_mage_spr, (x + partyreq_x), (y + partyreq_y+partyreq_gap), 1, 1, 0, c_white, 1)
if (card_archer = true)  { draw_sprite_ext(spr_items, req_archer_spr, (x + partyreq_x), (y + partyreq_y+(2*partyreq_gap)), 1, 1, 0, c_white, 1) }


if(card_drag) {
	//draw_line_width_color(x, y, lerp(10, mouse_x, prog), lerp(10, mouse_y, prog),8,c_green,c_white);
	y = card_max_y
	scr_draw_curve(x,y,mouse_x,mouse_y,100,50)
	card_selected = true
}


//cardArray[attack] = true
//cardArray[block] = true

//function drawItem(_cardArray,_itemArray) {
	
//	for(var i=0;i<=array_length_1d(_cardArray)-1;i++) {
		
//		//if _cardArray[i] == true { draw_sprite_ext(spr_items,_itemArray[i]-1,(x+i*5) + block_x, y + block_y,1,1,0,c_white,1) }
		
//	}
//}

//drawItem(cardArray,itemArray)



//Line Draw
