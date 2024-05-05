if room == rOnlineMenu{
	if echap{
		audio_play_sound(Select, 3, false)
		global.online = false
		rollback_leave_game()
		room_goto(rMultiGM)
	}
}

if global.online == true{
	if (!rollback_game_running){
			global.waitingforplayer = true
	}
	else{
		global.waitingforplayer = false
		//if (!tutoprinted)
		tuto = true
	}
}