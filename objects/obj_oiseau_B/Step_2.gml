/// @description Insert description here
// You can write your code in this editor

//show_debug_message(" xprevious :" + string_format(path_positionprevious,12,12) );


var _x  =path_get_x(pth_brid_01,path_position)  - path_get_x(pth_brid_01,path_positionprevious); 

if (_x > 0){
	//show_debug_message(" xprevious :" + string_format(path_positionprevious,12,12) );
	image_yscale = 1;	
}
if(_x < 0){
	//show_debug_message(" x :" + string_format(path_position,12,12) );
	image_yscale = -1;
}


var _y  = path_get_y(pth_brid_01,path_position)  - path_get_y(pth_brid_01,path_positionprevious);

var d = point_direction(path_get_x(pth_brid_01,path_positionprevious),
				path_get_y(pth_brid_01,path_positionprevious),
				path_get_x(pth_brid_01,path_position),
				path_get_y(pth_brid_01,path_position))



show_debug_message(d )
image_angle = d;