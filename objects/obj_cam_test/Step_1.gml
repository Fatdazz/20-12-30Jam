/// @description Insert description here
// You can write your code in this editor
	
	//show_debug_message("timeline_position :" + string(timeline_position) + "  tmMomMax: " + string(tmMomMax));
if(!surface_exists(fboGlichRead)){fboGlichRead = surface_create(view_w,view_h/nbView); _uvs_a = texture_get_uvs(surface_get_texture(fboGlichRead));}
if(!surface_exists(fboGlichWrite)){fboGlichWrite = surface_create(view_w,view_h/nbView);}



if(timeline_running && timeline_index == tm_portail_open){
		var tmMomMax  = timeline_max_moment(tm_portail_open);
		var t = timeline_position/tmMomMax;
		show_debug_message(t);
		for(var i  = 0; i < nbView-1 ; i++){
				view_xport[i] = 0;
				view_yport[i] = 0;
				view_wport[i] = view_w;
				view_hport[i] = view_h/(nbView-1) - t*(view_h/(nbView));
				view_camera[i] = camera_create_view(0, 0, view_w ,view_hport[i]);
				
		}
		
				view_xport[nbView-1] = 0;
				view_yport[nbView-1] = view_h - t*(view_h/(nbView)); ///// <======= modif 
				view_wport[nbView-1] = view_w;
				view_hport[nbView-1] = t*(view_h/(nbView));
				view_camera[i] = camera_create_view(0, 0, view_w ,view_hport[nbView-1]);
				
		
		
		surface_resize(fboGlichRead,view_w,view_h/nbView);
		surface_resize(fboGlichWrite,view_w,view_h/nbView);

}
	
	
if(!timeline_running){
	if(surface_get_height(fboGlichRead)!= view_h/nbView) surface_resize(fboGlichRead,view_w,view_h/nbView);
	if(surface_get_height(fboGlichWrite)!= view_h/nbView) surface_resize(fboGlichWrite,view_w,view_h/nbView);
}
