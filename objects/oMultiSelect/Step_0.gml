draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if echap{
	audio_play_sound(Select, 3, false)
	room_goto(rSelectGM)}


if (global.up_pressed){
	audio_play_sound(Select, 3, false)
	select -=1}
	
if (global.down_pressed){
	audio_play_sound(Select, 3, false)
	select+=1}

if (select < 0) select = 1
if (select > 1) select = 0

if select == 0{
	if enter && global.start_local == false{
		audio_play_sound(Select, 3, false)
		global.online = true
		room_goto(rOnlineMenu)
	}
}
else{
	if enter{
		audio_play_sound(Select, 3, false);
		room_goto(rDifficulty);
	}
}

if global.start_local == true{
	instance_create_layer(x,y, "Instances", oMulti);
	instance_destroy();
}