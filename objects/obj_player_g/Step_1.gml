/// @description Insert description here
// You can write your code in this editor
//hspeed = 0;
//vspeed = gravity_player;
if !place_meeting(x, y + sprite_height/2 + 1, obj_Comp_Colision)
    {
    gravity = gravity_player;
	//gravity = 2;
    }
else
    {
    gravity = 0;
    }


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

