/// @description Insert description here
// You can write your code in this editor

nbView+=1;
view_visible[nbView] = true;
var _player  = instance_find(obj_player_g,nbView);
_player.actif = true;

for(var i = 0; i < nbView;i++){
	show_debug_message(i);
	view_visible[i] = true;
	view_xport[i] = 0;
	view_yport[i] = 0;
	view_wport[i] = _w; // We want the window to be 960x540 so set the view port to half the width
	view_hport[i] = _h;


}
//surface_resize(application_surface, _w, _h);

