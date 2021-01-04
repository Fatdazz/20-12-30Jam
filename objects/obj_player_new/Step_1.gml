/// @description Insert description here
// You can write your code in this editor


var aniPlayerWalk = animcurve_get_channel(aniPlayer_struct,"acc");
var aniAcc = animcurve_channel_evaluate(aniPlayerWalk,abs(speedh/speedhMax));

var aniPlayerJump = animcurve_get_channel(aniPlayer_struct,"jum_acc");
var aniJump = animcurve_channel_evaluate(aniPlayerJump,abs(speedv/speedvMax));


if(place_meeting(x+1, y, obj_Comp_Colision)){speedh = 0;}
if(place_meeting(x-1, y, obj_Comp_Colision)){speedh = 0;}

if(place_meeting(x, y - 1, obj_Comp_Colision)){speedv = 0; lockJump = true;}
if(!place_meeting(x, y + 1, obj_Comp_Colision)){ 
	speedv += gravity_player;
	var aniPlayerfrict = animcurve_get_channel(aniPlayer_struct,"fric_jump");
	aniFrict = animcurve_channel_evaluate(aniPlayerfrict,abs(speedh/speedhMax));
	
	}
else{ 
	speedv = 0; 
	lockJump = false ;
	lockJumpTime = false;
	var aniPlayerfrict = animcurve_get_channel(aniPlayer_struct,"fric_grd");
	aniFrict = animcurve_channel_evaluate(aniPlayerfrict,abs(speedh/speedhMax));
	
	}



if( keyboard_check(vk_left))  speedh -= walk_acc * aniAcc ;
if( keyboard_check(vk_right)) speedh +=  walk_acc * aniAcc ;

if( keyboard_check(vk_space) && !lockJump){
	
	if(!lockJumpTime){alarm[0]= timeJump; lockJumpTime = true;}	
	speedv -= jump_acc * aniJump;
	
}