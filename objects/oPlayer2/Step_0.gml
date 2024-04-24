var up = global.player2_up
var down = global.player2_down
	
var input = down - up//keyboard_check(vk_down) - keyboard_check(vk_up)

//Les déplacements (utilisation du script respawnmatch pour dontmove le player)

var move = speedy * input
if dontmove=false{ //Pour empêcher le player de bouger
	
//*/Accel
	
vspd = walkplayer(vspd, move, accel);
	
	
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

if y < sprite_height/2 y = sprite_height/2
if y > room_height - sprite_height/2 y = room_height - sprite_height/2


// Fire Shot part 2 (part en dans oBalle)

if image_blend == c_red{
	if fireshottimer >= 15{
		image_blend = c_white
		fireshottimer = 0}
	else fireshottimer ++
}  