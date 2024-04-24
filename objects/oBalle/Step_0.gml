//Déplacements

//help

//Bounce aux murs

/*if room != Game{
if y < sprite_height/2 direction *= -1; //si la balle fait 60 pixels, alors /2 elle fait 30... Donc si y est plus petit que 30 donc si la balle est tt en haut et que l'origine et en dessous de 30, alors ça veut dire que le moitiée haut de la balle touche le plafond et doit donc rebondir avec le *=-1 déjà expliqué dans oEnnemie
else if y > room_height	- sprite_height/2 direction *= -1; //Pareil mais pour rebondir en bas, room = 768, ensuite - 30 = 738 et c'est pareil ensuite mais avec plus grand que}
///ATTENTION, les collisions pour bounce sont plus bas, ici c'est un au cas où.
}*/

//CE BOUNCE AU MUR CI DESSUS GENERE DES BUG !!! Le bounce de mur est fait avec des collisions sur des murs invisibles en dessous et encore pluys bas

//Collision Renfort pour pas que ça se bug dans la limite du mur :

if place_meeting(x,y,oCollisionRenfort){
	if y > room_height/2 y-=speed
	else if y < room_height/2 y+=speed}


//Empêcher de glitch la balle dans le plafond

//Score

if x < -sprite_width{ //Si touche le bord donc si x < -32 donc dés qu'il est totalement sorti
	oScore.enemyScore++;
	oScore.effect = true;
	oSoftLockBall.Ilyaeuunpoint = 1; //Pour annuler le softlock
	audio_play_sound(Ennemy_Point, 1, false);
	RespawnMatch()
}

if x > room_width + sprite_width{ //Inverse d'au dessus réfléchis petit con (déso de t'insulter t'es bg)
	oScore.playerScore++;
	oScore.effect = true;
	oSoftLockBall.Ilyaeuunpoint = 1;
	audio_play_sound(Point, 2, false);
	RespawnMatch()
}


//Collisions oIntroPONG qui sert aussi maintenant à Game (peut être utilisé avec d'autres objets)

if place_meeting(x,y, oDownCollision) || place_meeting(x,y, oUpCollision){
	direction *= -1
	destroyfire = true // Quand je touche un mur ça retire les trainees de feu (pour les réafficher dans le bon sens) tentative esthetique
}

if place_meeting(x,y, oLeftCollision) || place_meeting(x,y, oRightCollision){
	direction = 180 - direction
	destroyfire = true
}
	
/*
if place_meeting(x,y,oLeftCollision){
	direction *= -1}
	
if place_meeting(x,y,oRightCollision){
	var side = 0
	direction -= direction}
	
if place_meeting(x,y,oUpCollision) || place_meeting(x,y,oDownCollision){
if direction > 0 && direction < 90 || direction > 180 && direction < 270{
	var side = 90
	direction = direction - side}
}
	
if place_meeting(x,y,oUpCollision) || place_meeting(x,y,oDownCollision){
if direction < 360 && direction > 270 || direction > 90 && direction < 180{
	var side = 90
	direction = direction + side}
}
*/
	
	
	
//Commandes balle pour tests
/*
if keyboard_check(vk_left){
	direction = 180}
	
if keyboard_check(vk_right){
	direction = 0}
	
if keyboard_check(vk_up){
	direction = 90}
	
if keyboard_check(vk_down){
	direction = 270}
	
	
if keyboard_check_pressed(vk_alt){
	direction *= -1
	direction += 180}
*/

//////////////////////
// Collision Player //
//////////////////////

if place_meeting(x,y,oPlayer){

	x+=speed  // POUR NE PAS PASSER A TRAVERS Et pour ne pas tricher en faisant plusieurs renvois (je me comprends)
	

	//Renvois de la balle

	audio_play_sound(Bounce, 1, false)

	if x > sprite_width/2{

		//var est utilisé pour définir que la variable est locale donc qu'elle existe juste pendant la collision
		var dif = oPlayer.y - y; // y balle - y player    ex : 190 - 220 = -30      MAIS si on utilise abs() ça va donner 30 car 30 est la valeur absolue
		var maxx = oPlayer.sprite_height/2; //Moitié du player ex : 55
		var ratio = (dif/maxx) * angle; //différence DIVISE par moitié du paddle MULTIPLIE par l'angle pas exacte ex : -30 / 55 = 0,5 || 0,5 * 50 = 25

		if room != TitleScreen{
			direction = ratio;
			}
		else direction = ratio + random_range(-10, 10) //Pour ne pas buger la balle sur l'écran titre

	}

	//increase speed on contact

	if speed < maxspeed{
		
		speed *= 1.080
		
	}
	
	//Scaling
	
	image_xscale += 0.03
	image_yscale -= 0.03
	
	//Fire Shot
	
	if instance_exists(oFireball){
		with (oPlayer) image_blend = c_red;
		//Suite pour qu'il redevienne blanc dans l'other
	}

}

/////////////////////
//Collision ennemie//
/////////////////////

if place_meeting(x,y,oEnnemie){

	x-=speed  // POUR NE PAS PASSER A TRAVERS (8mois pour trouver ça)
	


	//Renvoie de le balle

	audio_play_sound(Bounce, 1, false)

	if x < (room_width - 100){

		var dif = oEnnemie.y - y; // y balle - y player    ex : 190 - 220 = -30      MAIS si on utilise abs() ça va donner 30 car 30 est la valeur absolue
		var maxx = oEnnemie.sprite_height/2; //Moitié du player
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

	if speed < maxspeed{
		speed *= 1.080
	}

	//Scaling
	
	image_xscale += 0.03
	image_yscale -= 0.03

	//Fire Shot
	
	if instance_exists(oFireball){
		with (oEnnemie) image_blend = c_red;
		//Suite pour qu'il redevienne blanc dans l'other
	}

}

////////////////////
//    Player 2    //
////////////////////

if place_meeting(x,y,oPlayer2){

	x-=speed  // POUR NE PAS PASSER A TRAVERS (8mois pour trouver ça)
	


	//Renvoie de le balle

	audio_play_sound(Bounce, 1, false)

	if x < (room_width - 100){

		var dif = oPlayer2.y - y; // y balle - y player    ex : 190 - 220 = -30      MAIS si on utilise abs() ça va donner 30 car 30 est la valeur absolue
		var maxx = oPlayer2.sprite_height/2; //Moitié du player
		var ratio = (dif/maxx) * angle; //différence DIVISE par moitié du paddle MULTIPLIE par l'angle pas exacte

		direction = ratio;

		direction += 180;// Passe de gauche à droite et inverse (donc le x)
		direction *= -1; // Passe de haut à bas donc y
		//Les deux vont donc des renvois en diagonales
		//image pour aider que je vais sûrement jamais aller voir avec ce lien : https://csanyk.com/rants/wp-content/uploads/2012/09/gm_direction.png


	}

	//increase speed on contact

	if speed < maxspeed{
		speed *= 1.080
	}

	//Scaling
	
	image_xscale += 0.03
	image_yscale -= 0.03

	//Fire Shot
	
	if instance_exists(oFireball){
		with (oPlayer2) image_blend = c_red;
		//Suite pour qu'il redevienne blanc dans l'other
	}

}


////////////////
//RespawnMatch//
////////////////


//Timer don't move
if timerdm > 0
{
	speed = 0
	if timerdm = 60{
		direction = choose(random_range(-15,15), random_range(165,195));
		BallSpeed()
		timerdm = 0;
	}
	else timerdm++
} /**/



///////////////
// Décoratif //
///////////////

//Angle

image_angle = direction

//Scale Clamp

image_xscale = clamp(image_xscale, 1, 1.4)
image_yscale = clamp(image_yscale, 0.6, 1)

//Trainée

instance_create_layer(x, y, "Instances", oTrail);
if instance_exists(oFireball)
	instance_create_layer(x, y, "Instances", oTrailFire);

//Fire

if 

speed >= maxspeed
	spawnfire = true
	
if spawnfire == true && !instance_exists(oFireball){
	instance_create_depth(x,y,-1,oFireball) //j'utilise depth pour que la fireball soit au dessus de la fireballhead (esthetique)
	sprite_index = sFireballhead
	mask_index = sBalle
}

//Masque de collision

if mask_index != sBalle
	mask_index = sBalle
	//Pas très utile je crois genre si je le retire ça change rien
	
if keyboard_check(vk_alt){
x = mouse_x
y = mouse_y}