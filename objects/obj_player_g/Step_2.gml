/// @description Insert description here
// You can write your code in this editor



moveCollision(obj_Comp_Colision);


if !place_meeting(x, y + 1, obj_Comp_Colision)
    {
    gravity = gravity_player;
	jumpLock = true;
    }
else
    {
	if(jumpLock) { vspeed = 0; show_debug_message( " =====================")};
	//show_debug_message(" g = 0    : ")
    gravity = 0;
	jumpLock = false;
    }
	
	
if abs(speed) > 0{
    friction = friction_player;
	//friction = 0.1;
    }
else
    {
    friction = 0;
    }