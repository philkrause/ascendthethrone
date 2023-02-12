// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_deck() {
deck = ds_list_create();

		 
ds_list_add(deck, "Banner");
ds_list_add(deck, "Strike");
ds_list_add(deck, "Strike")
ds_list_add(deck, "Strike")
ds_list_add(deck, "Potion");
ds_list_add(deck, "Potion");
ds_list_add(deck, "Wand");
ds_list_add(deck, "Crown")
ds_list_add(deck, "Crown")

show_debug_message("Deck created with: " + string(ds_list_size(deck)) + " cards")

return deck
}