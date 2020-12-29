// // Les actifs du script ont changé pour v2.3.0 Voir
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function moveCollision(_obj) 
{
	while(instance_place(x + hspeed, y, _obj)){
		x -= sign(hspeed);
	}
	while(instance_place(x, y + vspeed, _obj)){
		y -= sign(vspeed);
	}
}
