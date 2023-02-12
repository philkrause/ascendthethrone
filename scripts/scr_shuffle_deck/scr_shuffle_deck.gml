 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shuffle_deck(_deck){

//TODO: error checking, better randomization, cards remaining,
// confirm shuffle, confirm random, confirm deck integrity.
//check if should be shuffling currently, if flipping a card we want to make sure we delete the
//correct value.

randomize()

ds_list_shuffle(deck);

var cards_in_deck = ds_list_size(_deck);

if global.verbose
{
   for (i = 0; i <= cards_in_deck; i++)
   {
       card = ds_list_find_value(_deck, i);
       //show_debug_message(string(card));
   }
}

show_debug_message(string(cards_in_deck)+" cards shuffled.");

return;
}