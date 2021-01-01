/// @description Insert description here
// You can write your code in this editor

	
//camera_apply(view_camera[3]);





if(tm_portailCam !=-1){
	
	var camX = camera_get_view_x(view_camera[tm_portailCam]);
	var camY = camera_get_view_y(view_camera[tm_portailCam]);
	var camW = camera_get_view_width(view_camera[tm_portailCam]);
	var camH = camera_get_view_height(view_camera[tm_portailCam]);
	
	
	//show_debug_message(" draw  shader ");
	var _uvs_a = texture_get_uvs(surface_get_texture(view_surface_id[3]));
	var _uvs_b = sprite_get_uvs( spr_rgbNoiseSmall, 0 ); // dimension texture1
	
	//shader_set(shd_glitchColorShift);
	
	shader_set_uniform_f(uni_iTime,(delta_time/fps_real));
	//shader_set_uniform_f(uni_iTime,mouse_x/room_width);
	//show_debug_message(mouse_x/room_width);
	shader_set_uniform_f(uni_iResolution,sprite_width,sprite_height);
	shader_set_uniform_f( uni_uvB, _uvs_b[0], _uvs_b[1], _uvs_b[2]-_uvs_b[0], _uvs_b[3]-_uvs_b[1] );
	shader_set_uniform_f( uni_uvA, _uvs_a[0], _uvs_a[1], _uvs_a[2]-_uvs_a[0], _uvs_a[3]-_uvs_a[1] );
	texture_set_stage( t_sampler, t_sprite );
	draw_surface_stretched(fbo_entre,camX,camY,camW,camH);
	
	//shader_reset();
}


//draw_surface(fbo_entre,0,_h/2);
