/// @description Insert description here
// You can write your code in this editor

var _min = infinity;
var _max = 0;



//view_camera[0] = camera_create_view(0, 0, _w , _h);
for(var i = 0; i < nbView; i++){

	var _player = instance_find(obj_player_new,i);
	
	if(_player.x > x + _w*(1-deltaW)){ x+= _player.x - ( x + _w*(1-deltaW)); }
	if(_player.x < x + _w*deltaW){x-= (x + _w*deltaW) - _player.x }
	var _y = 0;
	var _yCam = camera_get_view_y(view_camera[0]);
	var _hCam = camera_get_view_height(view_camera[i]);
	
	if(_player.y > _yCam + _hCam*(1-deltaH)){ _yCam  +=_player.y - (_yCam +_hCam*(1-deltaH)); show_debug_message(" camera fin etape ") }
	if(_player.y < _yCam + _hCam*deltaH){    _yCam   -= (_yCam + _hCam*deltaH) -_player.y; }
	
	camera_set_view_pos(view_camera[i], x , _yCam );
	
}

