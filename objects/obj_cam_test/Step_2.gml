/// @description Insert description here
// You can write your code in this editor

var _min = infinity;
var _max = 0;


for(var i = 0; i < nbView; i++){

	var _player = instance_find(obj_player_new,i);
	
	if(_player.x > x + view_w *(1-deltaW)){ x+= _player.x - ( x + view_w *(1-deltaW)); }
	if(_player.x < x + view_w * deltaW){x-= (x + view_w *deltaW) - _player.x }
	
	var _y = 0;
	var _yCam = camera_get_view_y(view_camera[i]);
	var _hCam = camera_get_view_height(view_camera[i]);
	
	if(_player.y > _yCam + _hCam*(1-deltaH)){ _yCam  +=_player.y - (_yCam +_hCam*(1-deltaH)); show_debug_message(" camera fin etape ") }
	if(_player.y < _yCam + _hCam* deltaH)   { _yCam  -= (_yCam + _hCam*deltaH) -_player.y   ;  show_debug_message(" camera fin etape2 ")}
	
	camera_set_view_pos(view_camera[i], x , _yCam );
	
}


// creation & resize surface 

//for(var i = 0 ; i < nbView ; i ++){
//	if surface_exists(view_surface_id[i]){
//		//surface_set_target(fbo);
//		//draw_clear_alpha(0,0);
//		//surface_reset_target();
//	}else{
//		view_surface_id[i] = surface_create(view_w,view_h/nbView);
//	}

//	if(surface_get_height(view_surface_id[i]) != view_h/nbView){
		
//		surface_resize(view_surface_id[i],view_w,view_h/nbView);
		
//	}
//}

if(!surface_exists(fboGlichRead)){fboGlichRead = surface_create(view_w,view_h); _uvs_a =texture_get_uvs(surface_get_texture(fboGlichRead));}
if(!surface_exists(fboGlichWrite)){fboGlichWrite = surface_create(view_w,view_h);}
//if(surface_get_height(fboGlich) != view_h/nbView) { surface_resize(fboGlich,view_w/nbView,view_h/nbView);}
