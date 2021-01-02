/// @description Insert description here
// You can write your code in this editor

	while(place_meeting(x, y + speedv, obj_Comp_Colision)){
		//if (u == 0) u =+1; 
		y -= sign(speedv);
}

	while(place_meeting(x + speedh, y, obj_Comp_Colision)){
		//if (hspeed == 0) hspeed =+1; 
		//show_debug_message("jes suis X ");
		x -= sign(speedh);
	}

x += speedh;
y += speedv;