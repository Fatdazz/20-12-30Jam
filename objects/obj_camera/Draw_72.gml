/// @description Insert description here
// You can write your code in this editor

if (surface_exists(fbo_entre)) {
	
	surface_set_target(fbo_entre);
	draw_clear_alpha(0,0);
	surface_reset_target();
}else{
	fbo_entre = surface_create(_w,_h/(nbView));
}
if (surface_get_height(fbo_entre) != _h/nbView){
	
	//show_debug_message(" clear ")
	show_debug_message(" re dim ")
	surface_resize(fbo_entre,_w,_h/nbView);
	
	
	}

//if(surface_get_height(fbo_entre) == _h) show_debug_message(" <-i-> ")

//if (surface_exists(fbo_sortie)) {
//	surface_set_target(fbo_sortie);
//	draw_clear_alpha(0,0);
//	surface_reset_target();
//}else{
//	fbo_sortie = surface_create(_w,_h/(nbView));
//}

//if (surface_get_height(fbo_sortie) =! _h/nbView) surface_resize(fbo_sortie,_w,_h/nbView);
