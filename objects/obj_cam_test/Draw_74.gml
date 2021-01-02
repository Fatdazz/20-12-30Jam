/// @description Insert description here
// You can write your code in this editor
//surface_set_target(application_surface);
show_debug_message("----> debut gui ");


show_debug_message("w: " + string(surface_get_width(application_surface)) + " h: " + string(surface_get_height(application_surface)));

draw_surface(fboGlichWrite,0,0);

surface_set_target(fboGlichRead);
draw_surface(application_surface,0,0);
surface_reset_target();
