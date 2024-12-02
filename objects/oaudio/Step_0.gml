//Gestion volume

global.volumemusic = (global.music/100) * (global.gsound/100)
global.volumesfx = (global.sfx/100) * (global.gsound/100)

//Music

if global.musicOn = true && global.musicplaying = false{
	audio_sound_gain(Menu_Music, 0, 0);
	audio_play_sound(Menu_Music, 10, false);
	
	//Gestion du volume pendant l'intro
	audio_sound_gain(Menu_Music, global.volumemusic, 6666); //Volume de la musique pendant l'intro
	//Mettre ici pour chaque nouveau son de l'intro \/
	audio_sound_gain(PAM , global.volumesfx, 0);
	audio_sound_gain(Select , global.volumesfx, 0);
	audio_sound_gain(slot_1 , global.volumesfx, 0);
	audio_sound_gain(slot_2 , global.volumesfx, 0);
	audio_sound_gain(slot_3 , global.volumesfx, 0);
	audio_sound_gain(slot_4 , global.volumesfx, 0);
	audio_sound_gain(slot_5 , global.volumesfx, 0);
	audio_sound_gain(Super_Pong_intro , global.volumesfx, 0);
	audio_sound_gain(Bounce , global.volumesfx, 0);


	global.musicplaying = true
}

if global.firstlaunch = false{
	
	//Gestion du volume après l'intro
	audio_sound_gain(Menu_Music, global.volumemusic, 0); //Volume de la musique après l'intro
	//Mettre ici pour chaque nouveau son du jeu \/
	audio_sound_gain(Bounce , global.volumesfx, 0);
	audio_sound_gain(Ennemy_Point , global.volumesfx, 0);
	audio_sound_gain(Point , global.volumesfx, 0);
	audio_sound_gain(Select , global.volumesfx, 0);
}
	
if global.musicplaying = true{
	if global.musicloop == 10410{
		audio_play_sound(Menu_Music, 10, false);
		global.musicloop = 0;
	}
	else global.musicloop++
}

if keyboard_check(vk_space){
	show_message(global.musicloop)
}