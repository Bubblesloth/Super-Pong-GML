draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if echap{
	audio_play_sound(Select, 3, false)
	room_goto(rTitleScreen)}


if (global.up_pressed){
	audio_play_sound(Select, 3, false)
	select -=1}
	
if (global.down_pressed){
	audio_play_sound(Select, 3, false)
	select+=1}

if (select < 0) select = 2
if (select > 2) select = 0

if select == 2{
		if enter && global.start_local == false{
			if os_type == os_gxgames{
				audio_play_sound(Select, 3, false)
				global.online = true
				global.Gamemodechoice = GAMEMODE.CLASSIC
				room_goto(rOnlineMenu)
			}
			else{
				onlineErrorMessage = true
				//url_open() ouvrir le jeu sur GX.Games
			}
	}
}

else if select == 1{
	if enter{
		audio_play_sound(Select, 3, false);
		global.multi = true
		global.Gamemodechoice = GAMEMODE.CLASSIC
		room_goto(rDifficulty);
	}
}
else if select == 0{
	if enter{
		audio_play_sound(Select, 3, false);
		global.multi = false
		global.Gamemodechoice = GAMEMODE.CLASSIC
		room_goto(rDifficulty);
	}
}

if global.start_local == true{
	instance_create_layer(x,y, "Instances", oMulti);
	instance_destroy();
}