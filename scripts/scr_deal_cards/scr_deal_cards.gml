// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_deal_cards(_deck,_dealCount){
	
		global.hand = ds_list_create()
		
		if (ds_list_size(_deck) > 0) {
		
			for(var i=0;i<_dealCount;i++){
		
			//Add Card to Hand
				ds_list_add(global.hand,_deck[|i])
		
				if (global.verbose = true ) { show_debug_message("Card Being Dealt: " + string(_deck[|i])) }
 
				//Remove Card from Deck
				ds_list_delete(_deck,i)
		
			}
		} else {
		
		show_debug_message("DeckEmpty")	
	}

return global.hand
	
}