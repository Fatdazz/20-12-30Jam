/// @description Insert description here
// You can write your code in this editor

//var _uvs_a = texture_get_uvs(surface_get_texture(view_camera[0]));

tm_portailCam = 1;

if(tm_portailCam !=-1){
	show_debug_message(" draw ");
	var camX = camera_get_view_x(view_camera[tm_portailCam]);
	var camY = camera_get_view_y(view_camera[tm_portailCam]);
	var camW = camera_get_view_width(view_camera[tm_portailCam]);
	var camH = camera_get_view_height(view_camera[tm_portailCam]);
	
	camera_set_view_pos(view_camera[3],camX,camY);
	camera_set_view_size(view_camera[3],camW,camH);
}
	
	//camera_apply(view_camera[3]);
	
surface_set_target(fbo_entre);
camera_apply(view_camera[3]);
surface_reset_target();