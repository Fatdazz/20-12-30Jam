/// @description Insert description here
// You can write your code in this editor

//var curveJumpStruct = animcurve_get(ani_jump);
//var curveJumpChanel = animcurve_get_channel(curveJumpStruct,"acc");
//var curveJumpAcc = animcurve_channel_evaluate(curveJumpChanel,(jumpTime - alarm[0])/10); 

if(jump){ vspeed -= jump_acc;// * curveJumpAcc;

	}


vspeed = sign(vspeed) * min(vspeedMax, abs(vspeed));
hspeed = sign(hspeed) * min(hspeedMax, abs(hspeed));


moveCollision(obj_Comp_Colision);

//show_debug_message("Etape == > g : " + string(gravity) + "     hspeed : " +string(vspeed));

	
	
if abs(speed) > 0{
    friction = friction_player;
	//friction = 0.1;
    }
else 
    {
    friction = 0;
    }
	
	
	