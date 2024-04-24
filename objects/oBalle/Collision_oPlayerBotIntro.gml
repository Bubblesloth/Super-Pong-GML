//Renvoie de le balle

if x > (room_width - 1266){

var dif = other.y - y; // y balle - y player    ex : 190 - 220 = -30      MAIS si on utilise abs() ça va donner 30 car 30 est la valeur absolue
var maxx = other.sprite_height/2; //Moitié du player
var ratio = (dif/maxx) * angle; //différence DIVISE par moitié du paddle MULTIPLIE par l'angle pas exacte

direction = ratio;

//direction += 180;// Passe de gauche à droite et inverse (donc le x)
//direction *= -1; // Passe de haut à bas donc y
//Les deux vont donc des renvois en diagonales
//image pour aider que je vais sûrement jamais aller voir avec ce lien : https://csanyk.com/rants/wp-content/uploads/2012/09/gm_direction.png


}

//increase speed on contact

speed *= 1.065;

