/// @description Insert description here
// You can write your code in this editor

//var aniPlayer_chanel = animcurve_get_channel(aniPlayer_struct,"acc");
//var aniAcc = animcurve_channel_evaluate(aniPlayer_chanel,abs(speedh/speedhMax));




speedh -= sign(speedh) * frict_grd * aniFrict;
speedh = sign(speedh) * min(abs(speedh),speedhMax);


speedv = sign(speedv) * min(abs(speedv),speedvMax);


if abs(speedh)<0.01 speedh=0;