// // Les actifs du script ont changé pour v2.3.0 Voir
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations


function get_input_key(){
	jump = false;
	if( keyboard_check(vk_left)) hspeed = -walk_speed;
	if( keyboard_check(vk_right)) hspeed = walk_speed;
	if( keyboard_check_pressed(vk_up) ){ jump = true; jlock = false; alarm[0] = 10;}	
	if( keyboard_check_released(vk_up)){ jump = false;}
}

function get_input_(){
	if(gamepad_button_check(0,gp_padl))hsp = -walk_speed;
	if(gamepad_button_check(0,gp_padr))hsp =  walk_speed;
	if(gamepad_button_check(0,gp_face2))jump = true;
}
