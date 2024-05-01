var _input = rollback_get_input();
	
//input

	input = _input.down - _input.up
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

	if y < sprite_height/2 y = sprite_height/2
	if y > room_height - sprite_height/2 y = room_height - sprite_height/2
 
	//Easter Egg si le jeu a un bug et fait que ça fait trop longtemps qu'on a pas touché la balle (ici dans le menu)

	if instance_exists(oSoftLockBall){
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
	
	
//START / LEFT LOBBY	

if keyboard_check_pressed(vk_control) show_message(player_id)