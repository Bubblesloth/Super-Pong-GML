if room != rMultiGM{

//follow the Ball

if instance_exists(oBalle){
	var diff = oBalle.y - y; //Calculer la différence ex : 160 - 220 = -60
	if global.difficulty == DIFFICULTY.MOUSEMODE{	//Pour pas que l'ennemi tremble en mousemode où la balle va trop vite. APPLIQUABLE SUR D'AUTRES DIFFICULTES ET GM OU CA VA TROP VITE.
	var diffmax = oBalle.maxspeed - 15}	//Pour que l'écart soit plus grand, dur à expliquer faut tester sans pour voir la diff (valeur choisi au pif on peut changer)
	else{ var diffmax = 15}
	
	if abs(diff) > diffmax{ //Si 60 est plus grand que 15 alors il va bouger (si balle est assez éloignée du centre y de la paddle)
		if dontmove=false{ //Pour empêcher le player de bouger
		y += (speedy * sign(diff));} // 7 * -1 = y += -7   Sign transfore -X en -1 ou +X en 1
	}  
	else {
		if global.difficulty == DIFFICULTY.MOUSEMODE{	//Pour pas que l'ennemi tremble en mousemode où la balle va trop vite. APPLIQUABLE SUR D'AUTRES DIFFICULTES ET GM OU CA VA TROP VITE.
			y += (abs(diff)/15) * (20 * sign(diff));}	
			else{
				y += (abs(diff)/15) * (speedy * sign(diff)); //Si la balle est proche de la paddle alors il va monter ou descendre à une vitesse définie par la différence. ex : 0,666 * (5 * 1) = y += 3,333
			}
}		}


if timerdm > 0{
	if timerdm = 60{
		dontmove = false;
		timerdm = 0;
	}
	else timerdm++
} 
	
}
/*
//MODE MULTI

else{
	
	var up = oMulti.P2up
	var down = oMulti.P2down
	
	input = down - up//keyboard_check(vk_down) - keyboard_check(vk_up)

//Les déplacements (utilisation du script respawnmatch pour dontmove le player)

var move = speedy * input
if dontmove=false{ //Pour empêcher le player de bouger
y += move;
}

if timerdm > 0{
	if timerdm = 60{
		dontmove = false;
		timerdm = 0;
	}
	else timerdm++
} 
	
	
}*/

//Collisions

if y < sprite_height/2 y = sprite_height/2
if y > room_height - sprite_height/2 y = room_height - sprite_height/2


// Fire Shot part 2 (part en dans oBalle)

if image_blend == c_red{
	if fireshottimer >= 15{
		image_blend = c_white
		fireshottimer = 0}
	else fireshottimer ++
}  