/// @description Insert description here
// You can write your code in this editor
	
	//show_debug_message("timeline_position :" + string(timeline_position) + "  tmMomMax: " + string(tmMomMax));
if(!surface_exists(fboGlichRead)){fboGlichRead = surface_create(view_w,view_h/nbView); _uvs_a = texture_get_uvs(surface_get_texture(fboGlichRead));}
if(!surface_exists(fboGlichWrite)){fboGlichWrite = surface_create(view_w,view_h/nbView);}


#region //timeline_index == tm_portail_open
if(timeline_running && timeline_index == tm_portail_open){
		var tmMomMax  = timeline_max_moment(tm_portail_open);
		var t = timeline_position/tmMomMax;
		
		var aniChanel = animcurve_get_channel(aniTmPortail_struct,"speed_open");
		var aniSpeed = animcurve_channel_evaluate(aniChanel,t);
		
		var delta = t*(view_h/(nbView)) * aniSpeed;
		for(var i  = 0; i < nbView-1 ; i++){
				var _player = instance_find(obj_player_new,i);
				//view_visible[i] = true;
				view_xport[i] = 0;
				//view_yport[i] = i*view_h/nbView		///// <======= modif 
				view_yport[i] = i * view_hport[0];		///// <======= modif 
				view_wport[i] = view_w;
				view_hport[i] = view_h/(nbView-1) - delta/(nbView-1) ;
				view_camera[i] = camera_create_view(view_xport[0], _player.y, view_w ,view_hport[i]);
				
		}
				var _player = instance_find(obj_player_new,nbView-1);
				view_visible[nbView-1] = true;
				view_xport[nbView-1] = 0;
				view_yport[nbView-1] = view_h - delta; 
				view_wport[nbView-1] = view_w;
				view_hport[nbView-1] = delta;
				view_camera[nbView-1] = camera_create_view(view_xport[0], _player.y, view_w ,view_hport[nbView-1]);
				
		
		
		surface_resize(fboGlichRead,view_w,view_h/nbView);
		surface_resize(fboGlichWrite,view_w,view_h/nbView);

}
if(!timeline_running){
	if(surface_get_height(fboGlichRead)!= view_h/nbView) surface_resize(fboGlichRead,view_w,view_h/nbView);
	if(surface_get_height(fboGlichWrite)!= view_h/nbView) surface_resize(fboGlichWrite,view_w,view_h/nbView);
}

#endregion


#region // pos camera

var _min = infinity;
var _max = 0;


for(var i = 0; i < nbView; i++){

	var _player = instance_find(obj_player_new,i);
	
	if(_player.x > x + view_w *(1-deltaW)){ x+= _player.x - ( x + view_w *(1-deltaW)); }
	if(_player.x < x + view_w * deltaW){x-= (x + view_w *deltaW) - _player.x }
	
	var _y = 0;
	var _yCam = camera_get_view_y(view_camera[i]);
	var _hCam = camera_get_view_height(view_camera[i]);
	
	//if(_player.y > _yCam + _hCam*(1-deltaH)){ _yCam  +=_player.y - (_yCam +_hCam*(1-deltaH)); show_debug_message(" camera fin etape ") }
	//if(_player.y < _yCam + _hCam* deltaH)   { _yCam  -= (_yCam + _hCam*deltaH) -_player.y   ;  show_debug_message(" camera fin etape2 ")}
	_yCam = _player.y - view_hport[i]/2;//- view_hport[i]/2 ;
	camera_set_view_pos(view_camera[i], x , _yCam );
	//camera_set_view_pos(view_camera[i], x , _yCam );
}
#endregion