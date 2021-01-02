/// @description Insert description here
// You can write your code in this editor
show_debug_message("----> fin");

shader_set(shd_glitchColorShift);

shader_set_uniform_f(uni_iTime,(delta_time/fps_real));
shader_set_uniform_f(uni_iResolution,sprite_width,sprite_height);

shader_set_uniform_f( uni_uvB, _uvs_b[0], _uvs_b[1], _uvs_b[2]-_uvs_b[0], _uvs_b[3]-_uvs_b[1] );
shader_set_uniform_f( uni_uvA, _uvs_a[0], _uvs_a[1], _uvs_a[2]-_uvs_a[0], _uvs_a[3]-_uvs_a[1] );

texture_set_stage( t_sampler, t_sprite );

draw_surface(fboGlich,0,0);
shader_reset();


