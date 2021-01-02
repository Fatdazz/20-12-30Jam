// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function addWord(){
 if(nbView = 3) return 0;
 nbView+=1;
 for(var i = 0; i < nbView;i++){
	
	view_visible[i] = true;
	view_xport[i] = 0;
	view_yport[i] = i*view_h/(nbView);
	view_wport[i] = view_w; 
	view_hport[i] = view_h/(nbView);
	camera_set_view_size(view_camera[i], view_w,view_h/(nbView));

	}


}