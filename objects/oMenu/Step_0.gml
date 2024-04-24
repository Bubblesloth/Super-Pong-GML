//Commandes

var up = global.up_pressed;
var down = global.down_pressed;

//Apparition

if oIntroPart1.timer == 680 - oIntroPart1.firstL{
	SpawnMenu = true
}

if SpawnMenu = true{
visible = true

if timer < 100 - firstL{
	timer++
	
if global.firstlaunch = true{
		
	if timer == 1{
		sprite_index = sMenuSpawn
		image_index = 0
		audio_play_sound(slot_1, 1, false)
	}
	
	if timer == 15{
		image_index = 1
		audio_play_sound(slot_2, 1, false)
	}
	
	if timer == 30{
		image_index = 2
		audio_play_sound(slot_3, 1, false)
	}
	
	if timer == 45{
		image_index = 3
		audio_play_sound(slot_4, 1, false)
	}
	
	if timer = 59{
		sprite_index = sMenu
		image_index = 4
		audio_play_sound(slot_5, 1, false)
	}
}

else{
	if timer == 1{
	sprite_index = sMenu
	image_index = 4
	audio_play_sound(slot_5, 1, false)}
}
}
//Déplacement

if timer = 100 - firstL{

if down{
	menu += 1;
	audio_play_sound(Select, 3, false);
}
else if up{
	menu -= 1;
	audio_play_sound(Select, 3, false)
}

switch (menu){
	case 0:
		image_index	= 0
		if enter{
			global.firstlaunch = false
			room_goto(SelectGM);
			audio_play_sound(Select, 3, false)
			}
	break;
	
	case 1:
		image_index = 1
		if enter{
			global.firstlaunch = false
			room_goto(Options);
			audio_play_sound(Select, 3, false)
			}
	break;	
	
	case 2:
		image_index = 2
		if enter{
			global.firstlaunch = false
			show_message("All made by Bubblesloth with GameMaker (lol, do you really think make the credits is my priority)");
			audio_play_sound(Select, 3, false)
			}
	break;
	
	case 3:
		image_index = 3
		if enter{
			global.firstlaunch = false
			audio_play_sound(Select, 3, false)
			game_end();
			}
	break;
}

}

if menu > 3{
	menu = 0
}
else if menu < 0{
	menu = 3
}

}
