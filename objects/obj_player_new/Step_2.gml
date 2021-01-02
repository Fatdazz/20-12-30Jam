/// @description Insert description here
// You can write your code in this editor

	while(place_meeting(x, y + speedv, obj_Comp_Colision)){
		if (speedv == 0) speedv = 1; 
		y -= sign(speedv);
}

	while(place_meeting(x + speedh, y, obj_Comp_Colision)){
		if (speedh == 0) speedh = 1; 
		//show_debug_message("jes suis X ");
		x -= sign(speedh);
	}

x += speedh;
y += speedv;