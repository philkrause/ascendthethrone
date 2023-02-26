global.verbose = true
targeted = false

global.mana = 3
mana_gap = 40
mana_spr = 78

show_debug_message("PLAYER LOADED")


_seed = date_current_datetime();
random_set_seed(_seed);
randomize();
deck = scr_create_deck()
deck_size= ds_list_size(deck)

scr_shuffle_deck(deck);
show_debug_message("DECKSIZE:" + string(deck_size))
player_hand = scr_deal_cards(deck,5)
scr_create_hand(player_hand)


