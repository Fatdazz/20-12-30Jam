/// @description Insert description here
// You can write your code in this editor
//surface_set_target(application_surface);
//											show_debug_message("----> debut gui ");


//show_debug_message("w: " + string(surface_get_width(application_surface)) + " h: " + string(surface_get_height(application_surface)));


if(isGlich){	
	//draw_surface(fboGlichWrite,0,0);
	show_debug_message(nbView -2);
	draw_surface_part(fboGlichWrite, view_xport[nbView -2],view_yport[nbView -2],view_wport[nbView -2],view_hport[nbView -2],view_xport[nbView -2],view_yport[nbView -2]);

	surface_set_target(fboGlichRead);
	draw_clear(c_black);
	draw_set_alpha(1);
	//draw_surface_part(application_surface,0,0,view_wport[0],view_hport[0],0,0);
	draw_surface(application_surface,0,0);
	surface_reset_target();
	isGlich = false;
}

