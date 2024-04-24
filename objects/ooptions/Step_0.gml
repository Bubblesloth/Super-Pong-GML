draw_set_valign(fa_top);

//Quitter options

if echap && sousmenu = false{
	audio_play_sound(Select, 3, false)
	room_goto(TitleScreen)}

//Commandes

var up = global.up_pressed
var down = global.down_pressed
var left = global.left_pressed
var right = global.right_pressed

var  lleft = global.left
var rright = global.right

//Son position barre

jaugeglobalepos = (234*(global.gsound *-1 +100))/100 +100; //Pour passer de /100 à re /334 Merci Mme Garcia		# le *-1 car le résultat doit être négatif comme l'exemple dans debug en dessous
jaugesfxpos = (234*(global.sfx *-1 +100))/100 +100;
jaugemusicpos = (234*(global.music *-1 +100))/100 +100;

///Déplacements dans les options

//Déplacement de catégories

if sousmenu == false{
if down{
	optionselect += 1;
	audio_play_sound(Select, 3, false);
}
else if up{
	optionselect -= 1;
	audio_play_sound(Select, 3, false)
}

if optionselect > 2{
	optionselect = 0
}
else if optionselect < 0{
	optionselect = 2
}
}

//Déplacements commandes

if commands == true{
	sousmenu = true
	if right{
		commandselect += 1;
		audio_play_sound(Select, 3, false);
	}
	else if left{
		commandselect -= 1;
		audio_play_sound(Select, 3, false)
	}

	if commandselect > 2{
		commandselect = 0
	}
	else if commandselect < 0{
		commandselect = 2
	}
	
	if echap || enter{
		audio_play_sound(Select, 3, false)
		
		if (!global.online) global.commandset = commandselect
		else{
			if (player_id == 0) global.commandset_online_p1 = commandselect
			else if (player_id == 1) global.commandset_online_p2 = commandselect
		}
		scr_save()
		entersm = true
		sousmenu = false
		commands = false}
	
}

//Déplacement Son

if sound == true{
	sousmenu = true
	if down{
		soundselect += 1;
		audio_play_sound(Select, 3, false);
	}
	else if up{
		soundselect -= 1;
		audio_play_sound(Select, 3, false)
	}

	if soundselect > 2{
		soundselect = 0
	}
	else if soundselect < 0{
		soundselect = 2
	}	

//Jauge Globale

switch(soundselect){
	
	case 0:

if lleft{
jaugeglobale -= 1
scr_save()}

if rright{
jaugeglobale += 1
scr_save()}

if jaugeglobale > 100{
	jaugeglobale -= 1}
	
if jaugeglobale < 0{
	jaugeglobale += 1}
	
if (jaugeglobale <= 0){
	jglobalevisible = false}
else jglobalevisible = true

global.gsound = jaugeglobale
//Tt en haut dans variables l'initialisation de jaugeglobalepos

//////////////|Debug|///////////////////////////////////////
/*if keyboard_check(ord("U")){							  //
	show_message(jaugeglobalepos);						  //
	global.gsound=(((jaugeglobalepos-100)*100)/234)-100;  //
	show_message(global.gsound);						  //
	jaugeglobalepos = 100 + (234*(global.gsound+100))/100;//
	show_message(jaugeglobalepos);}*/     		          //
////////////////////////////////////////////////////////////

break;

//Jauge SFX

case 1:

if lleft{
jaugesfx -= 1
scr_save()}

if rright{
jaugesfx += 1
scr_save()}

if jaugesfx > 100{
	jaugesfx -= 1}
	
if jaugesfx < 0{
	jaugesfx += 1}
	
if (jaugesfx <= 0){
	jsfxvisible = false}
else jsfxvisible = true

global.sfx = jaugesfx

break;

//Jauge Musique

case 2 :


if lleft{
jaugemusic -= 1
scr_save()}

if rright{
jaugemusic += 1
scr_save()}

if jaugemusic > 100{
	jaugemusic -= 1}
	
if jaugemusic < 0{
	jaugemusic += 1}
	
if (jaugemusic <= 0){
	jmusicvisible = false}
else jmusicvisible = true

global.music = jaugemusic

break;
}

//left
	
	if echap || enter{
		audio_play_sound(Select, 3, false)
		scr_save()
		entersm = true
		sousmenu = false
		sound = false}
	
}

//Déplacement language

if language == true{
	sousmenu = true
	if right{
		languageselect += 1;
		audio_play_sound(Select, 3, false);
	}
	else if left{
		languageselect -= 1;
		audio_play_sound(Select, 3, false)
	}

	if languageselect > 1{
		languageselect = 0
	}
	else if languageselect < 0{
		languageselect = 1
	}
	
	if echap || enter{
		audio_play_sound(Select, 3, false)
		global.language = languageselect
		scr_save()
		entersm = true
		sousmenu = false
		language = false}
	
} 