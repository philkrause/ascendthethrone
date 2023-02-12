//attack_amount = 1
//block = false
//block_amount = 1
//buff = false
//buff_amount = 1
//allparty = false
//exhaust = false
//debuff = false
//fire = false
//fire_amount = 1
//blind = false
//heal = false
//heal_amount = false
//drawcard = false
//discard = false
//exhaust = false
function scr_map_deck(card){

	switch (card) {
		
		case ("Banner"):         
			card_sprite = spr_card2; 
			card_image = 0;
			card_cost = 2;
			card_warrior = true; 
			card_mage = true; 
			card_archer = true;
			card_heal = 0
			card_shield = 0
			card_attack = 0
			card_allparty = true
			card_description = "Revive all Teammates";
			break;
		case ("Holy Banner"):   
			card_sprite = spr_card2;
			card_image = 1; 
			card_cost = 2; 
			card_warrior = false;
			card_mage = true;
			card_archer = false;
			card_heal = 1
			card_shield = 0
			card_attack = 0
			card_allparty = true
			card_description = "Revive all Teammates " + string(card_heal);
			break;
		case ("Potion"):         
			card_sprite = spr_card2; 
			card_image = 2; 
			card_cost = 1;
			card_warrior = true;
			card_mage = true; 
			card_archer = false;
			card_heal = 0
			card_shield = 0
			card_attack = 0
			card_allparty = false
			card_description = "Heal " + string(card_heal) + " for every discard";
			break;
		case ("Coin"):           
			card_sprite = spr_card2; 
			card_image = 8;
			card_cost = 2; 
			card_warrior = false; 
			card_mage = true;
			card_archer = false;
			card_heal = 0
			card_shield = 0
			card_allparty = true
			card_attack = 0
			card_description = "Increase Spell Power";
			break;
		case ("Wand"):          
			card_sprite = spr_card2; 
			card_image = 5; 
			card_cost = 1; 
			card_warrior = false;
			card_mage = true;
			card_archer = false;
			card_heal = 0
			card_shield = 0
			card_attack = 1
			card_allparty = true
			card_description = "Remove enemy shield"; 
			break;
		case ("Strike"):          
			card_sprite = spr_card2; 
			card_image = 7;
			card_cost = 1; 
			card_warrior = true;
			card_mage = false;
			card_archer = false;
			card_heal = 0
			card_shield = 0
			card_attack = 2
			card_allparty = true
			card_description = "Attack " + string(card_attack);
			break;
		case ("Shield"):          
			card_sprite = spr_card2; 
			card_image = 12;
			card_cost = 2; 
			card_warrior = false;
			card_mage = false;
			card_archer = false;
			card_heal = 0
			card_shield = 1
			card_attack = 2
			card_allparty = false
			card_description =  "Apply " + string(card_shield)+ " Shield to 1 hero";
			break;
		case ("Crown"):          
			card_sprite = spr_card2; 
			card_image = 11;
			card_cost = 2; 
			card_warrior = true;
			card_mage = false;
			card_archer = false;
			card_heal = 0
			card_shield = 1
			card_attack = 2
			card_allparty = true
			card_description = "Apply " + string(card_attack) + " Shield all party";
			break;	
	}
	
	return 
}                                