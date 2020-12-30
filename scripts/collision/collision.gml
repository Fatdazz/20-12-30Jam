// // Les actifs du script ont changé pour v2.3.0 Voir
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function moveCollision(_obj) 
{
	
	
	while(place_meeting(x, y , _obj)){
		//show_debug_message(" g > 0    : " +string(vspeed))
		if (vspeed == 0) vspeed =+1; 
		y -= sign(vspeed);
		//gravity = 0;
	}

	while(place_meeting(x, y, _obj)){
		if (hspeed == 0) hspeed =+1; 
		show_debug_message("jes suis X ");
		x -= sign(hspeed);
	}


}
