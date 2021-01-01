// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function addWord(){
 if(nbView = 3) return 0;
 nbView+=1;
 for(var i = 0; i < nbView;i++){
	
	//show_debug_message("nbView: " + string( nbView) + " i: " + string(i));
	//view_visible[i] = true;
	//view_visible[i] = true;
	view_xport[i] = 0;
	view_yport[i] = i*_h/(nbView);
	view_wport[i] = _w; 
	view_hport[i] = _h/(nbView);
	camera_set_view_size(view_camera[i], _w,_h/(nbView));
	//camera_set_view_pos(view_camera[i],0, i*_h + _h/(nbView+1));

}


}