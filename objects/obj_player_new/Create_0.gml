/// @description Insert description here
// You can write your code in this editor
//jumpLock = false;
lockJump = false
lockJumpTime = false;
speedh = 0;
speedv = 0;


aniPlayer_struct = animcurve_get(ani_player);
partSystem = part_system_create();
part_system_depth(partSystem,-100);