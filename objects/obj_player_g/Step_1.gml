/// @description Insert description here
// You can write your code in this editor
//hspeed = 0;
//vspeed = gravity_player;


if abs(speed) > 0
    {
    friction = friction_player;
	//friction = 0.1;
    }
else
    {
    friction = 0;
    }

get_input_key();


if !place_meeting(x, y + sprite_height/2 + 0.01, obj_Comp_Colision)
    {
	show_debug_message(" g > 0    : " +string(jumpLock))
    gravity = gravity_player;
	
    }
else
    {
	show_debug_message(" g = 0    : " +string(jumpLock))
    gravity = 0;
	jumpLock = false;
    }

