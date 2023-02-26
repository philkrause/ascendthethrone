// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_push_discard_pile(_card){
	
	show_debug_message("Card Discarded:" + string(_card))
	global.discardPile = ds_list_create()
	ds_list_add(global.discardPile,_card)
	ds_list_delete(global.hand,_card)
}