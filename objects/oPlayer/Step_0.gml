y = mouse_y

//On met les variables de déplacement en place
	var up = global.up
	var down = global.down

var input = down - up//keyboard_check(vk_down) - keyboard_check(vk_up)

//Les déplacements (utilisation du script respawnmatch pour dontmove le player)

var move = speedy * input
if dontmove=false{ //Pour empêcher le player de bouger
	
//*/Accel
	
vspd = walkplayer(vspd, move, accel); //Pour un mouvement plus fluide mais qui se voit presque pas et pas si on est pas au courant donc pas très utile mais modifiable à souhait
	
	
y += vspd;
}

if timerdm > 0{
	if timerdm = 60{
		dontmove = false;
		timerdm = 0;
	}
	else timerdm++
} 
	
//Collisions

/*Methode Lucas rincée (je vais suppr les murs mais ils font le tour en gros) :

if place_meeting(x,y,oMurInvisibleHaut){
	y+=1*speedy}
	
if place_meeting(x,y,oMurInvisibleBas){
	y-=1*speedy} */
	
//Methode cool à apprendre :

if y < sprite_height/2 y = sprite_height/2
if y > room_height - sprite_height/2 y = room_height - sprite_height/2


 
//Easter Egg si le jeu a un bug et fait que ça fait trop longtemps qu'on a pas touché la balle (ici dans le menu)

if room = TitleScreen && instance_exists(oSoftLockBall){
	if bugtimer = 1000{
		
	drawbugtext = true

	}
	else {
		bugtimer++
		drawbugtext = false}
	
	if place_meeting(x,y,oBalle) || oSoftLockBall.Ilyaeuunpoint = 1{
		bugtimer = 0
		oSoftLockBall.Ilyaeuunpoint = 0;
	}
}

// Fire Shot part 2 (part en dans oBalle)

if image_blend == c_red{
	if fireshottimer >= 15{
		image_blend = c_white
		fireshottimer = 0}
	else fireshottimer ++
}  