/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
yCam = array_create(4);
nbView = 1;
nbViewMax = 3;

x = 0

view_enabled = true;
for(var i = 0; i < nbView; i++){
	
	if(i==0) view_visible[i] = true;
	view_xport[i] = 0;
	view_yport[i] = 0;
	view_wport[i] = view_w/nbView;
	view_hport[i] = view_h/nbView;
	view_camera[i] = camera_create_view(0, 0, view_w ,view_h);
	view_surface_id[i] = surface_create(view_w,view_h);
	
}


