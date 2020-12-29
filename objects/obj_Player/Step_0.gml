
hspeed = 0;
vspeed = 3;

get_input_key();
if(jump){vspeed+= -9; show_debug_message(vspeed)}
moveCollision(obj_Mur);
