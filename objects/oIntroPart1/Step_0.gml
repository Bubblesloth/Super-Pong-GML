if global.firstlaunch = true{
if timer < 740{
	
timer++

//if global.firstlaunch = true{
	
if timer == 120{
	visible = true;
	audio_play_sound(PAM, 1, false);
}

if timer == 200{
		global.musicOn = true
}

if timer == 360{
	image_index = 1;
	audio_play_sound(PAM, 2, false);
}
}

if timer == 500 - firstL{
	visible = true;
	image_index = 2
	audio_play_sound(Super_Pong_intro, 1, false)
	enablesuperanim = true
}

if timer > 500 - firstL{
	curvespeed += 0.04; //Augmenter vitesse de la curve
}


if timer == 625 - firstL{
	enablesuperanim = false;
	x = xstart;
}
//}
//Animation Curve
//if global.firstlaunch = true{
if enablesuperanim == true{


percent += curvespeed/60;
if (percent > 1) percent -= 1; //Système pour que la curve retourne au début

//Curve Y

var position = animcurve_channel_evaluate(curveY, percent) //Mise en place de la position, voir la fonction sur internet si toi pas comprendre

/*
var _start = oPointA.x;
var _end = oPointB.x;
var _distance = _end - _start;
										Methode pour aller d'un point A à un point B
x = _start + (_distance * position);	Voir cette vidéo pour comprendre https://www.youtube.com/watch?v=s3BqK9l_mP8
*/

y = position * movepower

//Curve X

position = animcurve_channel_evaluate(curveX, percent)

x = position * movepower

}
}
else{
	visible = true;
	image_index = 2
	oMenu.SpawnMenu = true
}