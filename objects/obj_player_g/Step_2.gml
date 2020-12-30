/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Post 01 Etape == > g : " + string(gravity) + "     hspeed : " +string(vspeed));

if !place_meeting(x, y + 1, obj_Comp_Colision)
    {
	//show_debug_message(" g > 2 : " + string(vspeed))
	jumpLock = true;
    }
else
    {
	if(jumpLock) { vspeed = 0; gravity = 0; show_debug_message( " ==========TOUCH=========== ");}
	jumpLock = false;
    }

if place_meeting(x, y - 1, obj_Comp_Colision) vspeed = 0;
if place_meeting(x + 1, y, obj_Comp_Colision) hspeed = 0;
if place_meeting(x - 1, y, obj_Comp_Colision) hspeed = 0;

//show_debug_message("Post 02 Etape == > g : " + string(gravity) + "     hspeed : " +string(vspeed));


//if !place_meeting(x, y + 1, obj_Comp_Colision)
//    {
//    gravity = gravity_player;
//	jumpLock = true;
//    }
//else
//    {
//	if(jumpLock) { vspeed = 0; show_debug_message( " =====================")};
//	//show_debug_message(" g = 0    : ")
//    gravity = 0;
//	jumpLock = false;
//    }
	
	
//if abs(speed) > 0{
//    friction = friction_player;
//	//friction = 0.1;
//    }
//else
//    {
//    friction = 0;
//    }