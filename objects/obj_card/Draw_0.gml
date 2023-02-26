var lMouse = mouse_check_button_pressed(mb_left);
var rMouse = mouse_check_button_pressed(mb_right)
var hover = instance_position(mouse_x,mouse_y,self)


//Card selected


//Hover
if (hover && !card_selected) {
	
		y -= 10
		if y <= card_max_y { y = card_max_y }
		depth -= instance_count -1
} 


//Card Select
if(lMouse && hover && !card_selected) {
			
			card_selected = true

			if (global.verbose) {
				show_debug_message("Card Clicked");
				show_debug_message("NAME: " + string(card_name));
				show_debug_message("COST: " + string(card_cost));
				show_debug_message("DESCRIPTION: " + string(card_description));
				show_debug_message("IMAGE: " + string(card_image));
				show_debug_message("ATTACK: " + string(card_attack));
			}
	
}

//Player Action
if (card_selected = true) {
	y = card_max_y
	scr_draw_curve(x,y,mouse_x,mouse_y,100,50)
	
	//Set to playerAction
	obj_state.state = states.playerAction
	
	//Deselect card
	if (card_selected = true && obj_state.state = states.playerAction && rMouse) {
		card_selected = false
		obj_state.state = states.playerChoice
	}

}


//Card Action
if(card_selected){
	for(var i=0;i<instance_number(obj_enemy1);i++) {
		
			//Find All enemies
			enemy[i] = instance_find(obj_enemy1,i);
			//Determine if mouse is over enemy
			mouseoverEnemy = instance_position(mouse_x,mouse_y,enemy[i])
		
			//Card Attack
			if(lMouse && obj_state.state = states.playerAction && mouseoverEnemy && card_attack > 0){
				show_debug_message("Player Attacked Enemy" );
			
				
				enemy[i].hp -= card_attack
				global.mana -= card_cost
				obj_state.state = states.playerChoice
				card_discarded = true
				card_selected = false
				
			}
	}
}

//Discard Card
if (card_discarded) {
	scr_push_discard_pile(self)
	instance_destroy(self)

}


//Draw Card
draw_sprite_ext(card_sprite,card_image,x,y,.4,.4,0,c_white,1)

//Draw Title
draw_set_font(font_title)
draw_set_color(c_white)
draw_set_halign(fa_center)

var name_x = sprite_get_width(id)
var name_y = sprite_get_height(id)-90

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
var description_y = sprite_get_height(id) + 55
draw_set_font(font_description)
draw_set_color(c_purple)
draw_text_ext(x+description_x,y+description_y,string(card_description),10,80)

//Draw Party Requirements	
if (card_warrior = true) { draw_sprite_ext(spr_items, req_warrior_spr, (x + partyreq_x), (y + partyreq_y), 1, 1, 0, c_white, 1) } 
if (card_mage = true)draw_sprite_ext(spr_items, req_mage_spr, (x + partyreq_x), (y + partyreq_y+partyreq_gap), 1, 1, 0, c_white, 1)
if (card_archer = true)  { draw_sprite_ext(spr_items, req_archer_spr, (x + partyreq_x), (y + partyreq_y+(2*partyreq_gap)), 1, 1, 0, c_white, 1) }



