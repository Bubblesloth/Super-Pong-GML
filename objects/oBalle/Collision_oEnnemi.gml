////////////////////////////// PLUS RIEN ICI CAR TRANSFéRé DANS STEP (Car genre ça marche mieux, la collision est plus précise au pixel près)

/*//Renvoie de le balle

audio_play_sound(Bounce, 1, false)

if x < (room_width - 100){

var dif = other.y - y; // y balle - y player    ex : 190 - 220 = -30      MAIS si on utilise abs() ça va donner 30 car 30 est la valeur absolue
var maxx = other.sprite_height/2; //Moitié du player
var ratio = (dif/maxx) * angle; //différence DIVISE par moitié du paddle MULTIPLIE par l'angle pas exacte

if room != TitleScreen{
direction = ratio;
}
else direction = ratio + random_range(-10, 10) //Pour ne pas buger la balle sur l'écran titre

direction += 180;// Passe de gauche à droite et inverse (donc le x)
direction *= -1; // Passe de haut à bas donc y
//Les deux vont donc des renvois en diagonales
//image pour aider que je vais sûrement jamais aller voir avec ce lien : https://csanyk.com/rants/wp-content/uploads/2012/09/gm_direction.png


}

//increase speed on contact

if speed < 25{
speed *= 1.080
}
*/