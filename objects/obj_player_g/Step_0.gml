/// @description Insert description here
// You can write your code in this editor

var curveJumpStruct = animcurve_get(ani_jump);
var curveJumpChanel = animcurve_get_channel(curveJumpStruct,"acc");
var curveJumpAcc = animcurve_channel_evaluate(curveJumpChanel,(jumpTime - alarm[0])/10); 


if(jump){ vspeed -= jump_speed;// * curveJumpAcc;
	
	}
	

moveCollision(obj_Comp_Colision);

vspeed = sign(vspeed) * min(vspeedMax, abs(vspeed));
hspeed = sign(hspeed) * min(hspeedMax, abs(hspeed));
//speed = min(speedMax, speed);
