yCam = array_create(4);
nbView = 1;

 _w = 1900;
 _h = 1000;

window_set_rectangle(0,0,_w,_h);

x = 0

// Set up camera for view[0] (player 1)
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = _w; 
view_hport[0] = _h;
view_camera[0] = camera_create_view(0, 0, _w , _h);
camera_set_view_pos(view_camera[0], 0, 0);

camera_set_view_border(view_camera[0],0,0);

// Set up camera for view[0] (player 2)
view_visible[1] = false;
view_xport[1] = 0; // Offset the second view for player two within the game window
view_yport[1] = _h/2;
view_wport[1] = _w;
view_hport[1] = _h/2;
view_camera[1] = camera_create_view(0, 0, _w, _h/2);

camera_set_view_pos(view_camera[1], 0, 0);
//// Set up camera for view[0] (player 1)

view_visible[2] = false;
view_xport[2] = 0;
view_yport[2] = 2*_h / 4;
view_wport[2] = _w; // We want the window to be 960x540 so set the view port to half the width
view_hport[2] = _h / 4;
view_camera[2] = camera_create_view(0, 0, _w, _h/2);;


surface_resize(application_surface, _w, _h);


fbo_entre = surface_create(_w,_h);
fbo_sortie = surface_create(_w,_h);

tm_portail = false;
tm_portailCam = pointer_null;



view_xport[3] = 0; // Offset the second view for player two within the game window
view_yport[3] = 0;
view_wport[3] = _w;
view_hport[3] = _h/2;
view_camera[3] = camera_create_view(0, 0, _w, _h);
view_surface_id[3] = fbo_entre;
view_visible[3]= true;

 ///   shader glich ////
uni_iResolution = shader_get_uniform(shd_glitchColorShift,"iResolution");
uni_iTime = shader_get_uniform(shd_glitchColorShift,"iTime");
uni_uvA = shader_get_uniform( shd_glitchColorShift, "u_vA" );
uni_uvB = shader_get_uniform( shd_glitchColorShift, "u_vB" );
t_sampler = shader_get_sampler_index( shd_glitchColorShift, "Texture01" );
t_sprite = sprite_get_texture( spr_rgbNoiseSmall, 0 );

