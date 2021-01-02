// // Les actifs du script ont changé pour v2.3.0 Voir
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function moveCollisionNew(_obj) 
{
	
	var u = vspeed + gravity;
	while(place_meeting(x, y + u, _obj)){
		//show_debug_message(" collision speed    : " + string(u))
		if (u == 0) u =+1; 
		y -= sign(u);
		//gravity = 0;
	}

	while(place_meeting(x + hspeed, y, _obj)){
		if (hspeed == 0) hspeed =+1; 
		//show_debug_message("jes suis X ");
		x -= sign(hspeed);
	}


}
