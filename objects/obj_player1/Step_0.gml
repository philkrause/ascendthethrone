





if (global.mana <= 0) { obj_state.state = states.enemyStart }







if keyboard_check(ord("R")){
	game_restart()
}

if keyboard_check(vk_escape){
	game_end()
}


//for(var i =0;i<instance_number(obj_enemy1);i++) {
		
//	enemy[i] = instance_find(obj_enemy1,i);
		
//	if (obj_card.card_drag == true && position_meeting(mouse_x,mouse_y,enemy[i])) {
//		enemy[i].targeted = true
//	} 
	
//}
