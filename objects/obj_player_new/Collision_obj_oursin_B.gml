/// @description Insert description here
// You can write your code in this editor

var c = choose(c_aqua,c_blue,c_green,c_navy,c_red,c_purple,c_white,c_yellow);

var _p = part_type_create();
part_type_color1(_p,c);
part_type_shape(_p,pt_shape_disk);
part_type_life(_p,20,50);
part_type_scale(_p,0.3,0.3);

part_type_speed(_p,3,5,0,0);
part_type_direction(_p,0,360,0,0);
part_type_orientation(_p,0,0,0,0,true);
part_type_gravity(_p,0.3,270);


part_particles_create(partSystem,x,y,_p,5);
visible = true;
alarm[1] = 60;

speedh = 0;
speedv = 0;
x = spawn.x;
y = spawn.y;