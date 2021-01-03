/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
yCam = array_create(4);


nbView = 1;
nbViewMax = instance_number(obj_player_new);

x = 0
view_enabled = true;
for(var i = 0; i < nbView; i++){
	
	if(i==0) view_visible[i] = true;
	view_xport[i] = 0;
	view_yport[i] = 0;
	view_wport[i] = view_w/nbView;
	view_hport[i] = view_h/nbView;
	view_camera[i] = camera_create_view(0, 0, view_w ,view_h);
	//view_surface_id[i] = surface_create(view_w,view_h);
	
}


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



