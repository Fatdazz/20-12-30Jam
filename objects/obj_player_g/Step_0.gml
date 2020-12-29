/// @description Insert description here
// You can write your code in this editor

var curveJumpStruct = animcurve_get(ani_jump);
var curveJumpChanel = animcurve_get_channel(curveJumpStruct,"acc");
var curveJumpAcc = animcurve_channel_evaluate(curveJumpChanel,(jumpTime - alarm[0])/10); 
show_debug_message(curveJumpAcc);

if(jump){ vspeed = -jump_speed * curveJumpAcc;}

moveCollision(obj_Comp_Colision);