


global.warrior_mana = 3
global.mage_mana = 3
global.archer_mana = 3

global.warrior_health = 3
global.mage_health = 3
global.archer_health = 3


global.verbose = true

mana = 5
mana_gap = 40
mana_spr = 78

show_debug_message("PLAYER LOADED")
deck = scr_create_deck()
deck_size= ds_list_size(deck)

//Create Random Order
_seed = date_current_datetime();
random_set_seed(_seed);
randomize();
	

scr_shuffle_deck(deck);
show_debug_message("DECKSIZE:" + string(deck_size))
player_hand = scr_deal_cards(deck,5)
scr_create_hand(player_hand)