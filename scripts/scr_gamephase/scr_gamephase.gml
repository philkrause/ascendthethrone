// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gamephase(_phase){

	switch(_phase) {
		
		case ("Deal"):
			
			_seed = date_current_datetime();
			random_set_seed(_seed);
			randomize();

			scr_shuffle_deck(deck);
			show_debug_message("DECKSIZE:" + string(deck_size))
			player_hand = scr_deal_cards(deck,5)
			scr_create_hand(player_hand)
		
		break;
	
		
		case ("PlayerTurn"):
			
			
			
		break;
	}
}