// // Les actifs du script ont changé pour v2.3.0 Voir
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations


function get_input_key(){
	//jump = false;
	if( keyboard_check(vk_left))  hspeed += -walk_acc;
	if( keyboard_check(vk_right)) hspeed += walk_acc;
	if( keyboard_check_pressed(vk_space) && !jumpLock ){ jump = true; alarm[0] = jumpTime;}	
	//if( keyboard_check_released(vk_space)){ jump = false;}
	if(keyboard_check_released(vk_space) ){jump = false;} 
}	

function get_input_(){
	if(gamepad_button_check(0,gp_padl))hsp = -walk_acc;
	if(gamepad_button_check(0,gp_padr))hsp =  walk_acc;
	if(gamepad_button_check(0,gp_face2))jump = true;
}
