/// @description Insert description here
// You can write your code in this editor





//////////////////  FRICT  /////////////
speedh -= sign(speedh) * frict_grd * aniFrict;

//////////////////  MAX  /////////////
speedh = sign(speedh) * min(abs(speedh),speedhMax);
speedv = sign(speedv) * min(abs(speedv),speedvMax);


if abs(speedh)<0.01 speedh=0;



//////////////////  COLLISION  /////////////
while(place_meeting(x, y + speedv, obj_Comp_Colision)){
		if (speedv == 0) speedv = 1; 
		y -= sign(speedv);
		//show_debug_message(" place-Meeting  y ");
}

while(place_meeting(x + speedh, y, obj_Comp_Colision)){
		if (speedh == 0) speedh = 1; 
		//show_debug_message("jes suis X ");
		x -= sign(speedh);
	}


//hspeed = speedh;
//vspeed = speedv;
x += speedh;
y += speedv;
