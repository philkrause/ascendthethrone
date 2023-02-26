// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_hand(_hand){
	
	handSize = ds_list_size(_hand )
	if (handSize > 0) {
	
		
		
		for(var i =0;i<handSize;i++){
			
			var card = ds_list_find_value(_hand,i);
			scr_map_deck(card);
			var new_card = instance_create_depth(x, y, -1, obj_card);
	
			//Spread Cards 
			var padding = 40
			var spr_width = 110
			var allcard_width = (padding+spr_width) * i
			var offset = allcard_width/2
			var dx = allcard_width - offset
			var radius = 5
			var delta = (new_card.sprite_width)*360/(2*pi*radius)
			
			//where to print the first card
			new_card.x = dx + (room_width/2) - 150
			
			// set values
			new_card.card_name = card;
			new_card.card_cost = card_cost
			new_card.card_sprite = card_sprite;
			new_card.card_image = card_image;
			new_card.card_attack = card_attack;
			new_card.card_heal = card_heal;
			new_card.card_shield = card_shield
			new_card.card_description = card_description
			new_card.card_mage = card_mage
			new_card.card_warrior = card_warrior
			new_card.card_archer = card_archer
	
			//// set card image
			new_card.sprite_index = card_sprite;
			new_card.image_index = card_image;
			new_card.image_angle = 1000*delta
		   	//new_card.image_angle = random_range(-100,100);
	
		}
	}

}