////////////////////////////// PLUS RIEN ICI CAR TRANSFéRé DANS STEP (Car genre ça marche mieux, la collision est plus précise au pixel près)

/*
x+=speed  // POUR NE PAS PASSER A TRAVERS Et pour ne pas tricher en faisant plusieurs renvois (je me comprends)
	

//Renvois de la balle

audio_play_sound(Bounce, 1, false)

if x > sprite_width/2{

//var est utilisé pour définir que la variable est lcoale donc qu'elle existe juste pendant la collision
var dif = other.y - y; // y balle - y player    ex : 190 - 220 = -30      MAIS si on utilise abs() ça va donner 30 car 30 est la valeur absolue
var maxx = other.sprite_height/2; //Moitié du player ex : 55
var ratio = (dif/maxx) * angle; //différence DIVISE par moitié du paddle MULTIPLIE par l'angle pas exacte ex : -30 / 55 = 0,5 || 0,5 * 50 = 25

if room != TitleScreen{
direction = ratio;
}
else direction = ratio + random_range(-10, 10) //Pour ne pas buger la balle sur l'écran titre

}

//increase speed on contact

if speed < 25{
speed *= 1.080
}
*/