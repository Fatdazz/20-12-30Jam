//slowly decay any applied shake
//shake *= 0.9;

////screenshake
//var cam = view_camera[0] 
//camera_set_view_pos(cam,camera_get_view_x(cam)+random_range(-shake,shake),camera_get_view_y(cam)+random_range(-shake,shake)) 

//var cam = view_camera[1] 
//camera_set_view_pos(cam,camera_get_view_x(cam)+random_range(-shake,shake),camera_get_view_y(cam)+random_range(-shake,shake)) 


var _min = 0;
var _max = 0;
for(var i=0; i< 4; i++){
	
	var _player = instance_find(obj_player_g,i);
	if(_player.actif){
		if(_min>_player.x)_min = _player.x;
		if(_max<_player.x)_max = _player.x;
	}
}

//view_camera[0] = camera_create_view(0, 0, _w , _h);
camera_set_view_pos(view_camera[0],(_max + _min)/2,nbView);