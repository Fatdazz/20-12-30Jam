/// @description Insert description here
// You can write your code in this editor

view_visible[nbView] = true;
var _player  = instance_find(obj_player_g,nbView);
_player.actif = true;

for(var i = 0; i < nbView+1;i++){
	
view_xport[0] = 0;
view_yport[0] =  i * (_h + _h/(nbView+1));
view_wport[0] = _w; // We want the window to be 960x540 so set the view port to half the width
view_hport[0] = _h/(nbView+1);


}


nbView+=1;