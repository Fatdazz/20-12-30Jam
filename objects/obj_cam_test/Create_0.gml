/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
yCam = array_create(4);


nbView = 1;
nbViewMax = instance_number(obj_player_new);

x = 0
view_enabled = true;
	view_visible[0] = true
	//if(i==0) view_visible[i] = true;
	view_xport[0] = 0;
	view_yport[0] = 0;
	view_wport[0] = view_w;
	view_hport[0] = view_h;
	view_camera[0] = camera_create_view(view_xport[0], view_yport[0], view_wport[0] ,view_hport[0]);

for(var i = 1; i < nbViewMax; i++){
	view_visible[i] = false;
	//if(i==0) view_visible[i] = true;
	view_xport[i] = 0;
	view_yport[i] = view_h + 2;
	view_wport[i] = 2;
	view_hport[i] = 2;
	view_camera[i] = camera_create_view(view_xport[i], view_yport[i], view_wport[i] ,view_hport[i]);
	//view_surface_id[i] = surface_create(view_w,view_h);
	
}

show_debug_message("view_hport[0]: " + string( view_visible[0]) + " view_hport[1]: " + string( view_visible[1]) + " view_hport[2]: " + string( view_visible[2]) )
//camera_set_begin_script(view_camera[0],sr_cam_begin);
//camera_set_end_script(view_camera[0],sr_cam_end);

//application_surface_draw_enable(false);

#region // grlich
fboGlichRead = surface_create(view_w/nbView,view_h/nbView);
fboGlichWrite = surface_create(view_w/nbView,view_h/nbView);


uni_iResolution = shader_get_uniform(shd_glitchColorShift,"iResolution");
uni_iTime = shader_get_uniform(shd_glitchColorShift,"iTime");
uni_uvA = shader_get_uniform( shd_glitchColorShift, "u_vA" );
uni_uvB = shader_get_uniform( shd_glitchColorShift, "u_vB" );

 _uvs_b = sprite_get_uvs( spr_rgbNoiseSmall, 0 ); // dimension texture1
 _uvs_a =texture_get_uvs(surface_get_texture(fboGlichRead));
 t_sampler = shader_get_sampler_index( shd_glitchColorShift, "Texture01" );
 t_sprite = sprite_get_texture( spr_rgbNoiseSmall, 0 );
#endregion

isGlich = true;
adressGlachCam = pointer_null;
timeline_index = tm_portail_open;
aniTmPortail_struct = animcurve_get(Ani_tm_portail);



