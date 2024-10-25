//Score qui clignote

if effect == true{
	if timer == 0 effectdo = true
	if timer == 10 effectdo = false
	if timer == 20 effectdo = true
	if timer == 30 effectdo = false
	if timer == 40 effectdo = true
	if timer == 50{
		effectdo = false
		effect = false
		timer = 0}
	else timer++
}


if room == rGame{
	switch (global.Gamemodechoice){
	
		case GAMEMODE.CLASSIC:
			if enemyScore >= 11 || playerScore >= 11{
				if playerScore - enemyScore >= 2{
					global.win = "p1"	
				}
				else if enemyScore - playerScore >= 2{
					global.win = "p2"
				}
			}
		break;
	
	}
}


if global.win != "nobody" and enter{
	room_goto(rTitleScreen)
}





//cheat

if keyboard_check_pressed(vk_left){
	playerScore++
}

if keyboard_check_pressed(vk_right){
	enemyScore++
}

