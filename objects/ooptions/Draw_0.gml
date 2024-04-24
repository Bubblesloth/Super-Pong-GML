//Set Font

draw_set_color(c_white);
draw_set_halign(fa_center);

//Option
draw_set_font(TitleFont);
draw_text(room_width/2, 20, "Options");

//Commands

draw_set_halign(fa_center);
draw_set_font(GameFont);
draw_text(room_width/2, 150, "Commands :");
draw_set_color(c_white);
draw_text(room_width/2 - 60 - 200, 240, "Arrow Keys"); //200 pixels -> 100pix de chq côtés ->
draw_text(room_width/2, 240, "QWERTY"); //QWERTY prend 120 pixels donc 120 / 2 = 60	||	    100 - 40 = 60 -> 200 - 40 = 160 écrit en dessous
draw_text(room_width/2 + 60 + 160, 240, "AZERTY"); //120 pixels -> 60pixels de chq côtés ->

//Son

draw_set_halign(fa_center);
draw_set_font(GameFont);
draw_text(room_width/2, 320, "Sound :");
draw_set_halign(fa_right);
draw_set_color(c_white);

draw_text(room_width/2 - 60 - 200 - 100 + 227, 380, "Global Sound");
draw_set_color(c_white);
draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 /*= 1246*/, 390, room_width/2 - 120 + 240, 410, true)

draw_text(room_width/2 - 60 - 200 - 100 + 225, 445, "SFX");
draw_set_color(c_white);
draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 /*= 1246*/, 455, room_width/2 - 120 + 240, 475, true)

draw_text(room_width/2 - 60 - 200 - 100 + 225, 510, "Music");
draw_set_color(c_white);
draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 /*= 1246*/, 520, room_width/2 - 120 + 240, 540, true)

//Jauges de Son

if sound = false{

if jglobalevisible = true{
draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 + 3, 390 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugeglobalepos, 410 - 3, false);}

if jsfxvisible = true{
draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 +3, 455 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugesfxpos, 475 - 3, false);}

if jmusicvisible = true{
draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 + 3, 520 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugemusicpos, 540 - 3, false)}
}

//Language

draw_set_halign(fa_center);
draw_set_font(GameFont);
draw_text(room_width/2, 580, "Language :");
if language = false{
	if global.language = 0{
draw_text(room_width/2, 660, "< English >");}
	if global.language = 1{
draw_text(room_width/2, 660, "< Francais >");}	
}


//Switch catégories

switch(optionselect){
	
	case 0:
		if sousmenu == false{
		draw_set_color(#85b4ff);
		draw_text(room_width/2, 150, "Commands :");
		draw_set_color(c_white);
		draw_text(room_width/2, 320, "Sound :");
		draw_text(room_width/2, 580, "Language :");
		
		if entersm = false{
		if enter{
			audio_play_sound(Select, 3, false);
			draw_set_color(c_white);
			draw_text(room_width/2, 320, "Sound :");
			draw_text(room_width/2, 580, "Language :");
			draw_text(room_width/2, 150, "Commands :");
			commands = true
			}}
		else entersm = false
		}
	break;
	
	case 1:
		if sousmenu == false{
		draw_set_color(#85b4ff);
		draw_text(room_width/2, 320, "Sound :");
		draw_set_color(c_white);
		draw_text(room_width/2, 150, "Commands :");
		draw_text(room_width/2, 580, "Language :");
		
		if entersm = false{
		if enter{
			audio_play_sound(Select, 3, false);
			draw_set_color(c_white);
			draw_text(room_width/2, 320, "Sound :");
			draw_text(room_width/2, 580, "Language :");
			draw_text(room_width/2, 150, "Commands :");
			sound = true
			}}
		else entersm = false
		}
	break;

	case 2:
		if sousmenu == false{
		draw_set_color(#85b4ff);
		draw_text(room_width/2, 580, "Language :");
		draw_set_color(c_white);
		draw_text(room_width/2, 150, "Commands :");
		draw_text(room_width/2, 320, "Sound :");
		
		if entersm = false{
		if enter{
			audio_play_sound(Select, 3, false);
			draw_set_color(c_white);
			draw_text(room_width/2, 320, "Sound :");
			draw_text(room_width/2, 580, "Language :");
			draw_text(room_width/2, 150, "Commands :");
			language = true
			}}
		else entersm = false
		}
	break;
}

//Switch Commands

if commands == true {
	switch(commandselect){
	
		case 0:
			draw_set_halign(fa_center);
			draw_set_color(#85b4ff);
			draw_text(room_width/2 - 60 - 200, 240, "Arrow Keys");
			draw_set_color(c_white);
			draw_text(room_width/2, 240, "QWERTY");
			draw_text(room_width/2 + 60 + 160, 240, "AZERTY");
			break;
		
		case 1:
			draw_set_halign(fa_center);
			draw_set_color(#85b4ff);
			draw_text(room_width/2, 240, "QWERTY");
			draw_set_color(c_white);
			draw_text(room_width/2 - 60 - 200, 240, "Arrow Keys");
			draw_text(room_width/2 + 60 + 160, 240, "AZERTY");
			break;
		
		case 2:
			draw_set_halign(fa_center);
			draw_set_color(#85b4ff);
			draw_text(room_width/2 + 60 + 160, 240, "AZERTY");
			draw_set_color(c_white);
			draw_text(room_width/2 - 60 - 200, 240, "Arrow Keys");
			draw_text(room_width/2, 240, "QWERTY");
			break;
	}
}

//Switch Sound

if sound == true {
	switch(soundselect){
	
		case 0:
			draw_set_halign(fa_right);
			draw_set_color(#85b4ff);
			draw_text(room_width/2 - 60 - 200 - 100 + 227, 380, "Global Sound");
			draw_set_color(c_white);
			draw_text(room_width/2 - 60 - 200 - 100 + 225, 445, "SFX");
			draw_text(room_width/2 - 60 - 200 - 100 + 225, 510, "Music");
			
			//Jauge globale
			if jglobalevisible == true{
			draw_set_color(#85b4ff);
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 + 3, 390 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugeglobalepos, 410 - 3, false);
			draw_set_color(c_white);}
			if jsfxvisible == true{
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 +3, 455 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugesfxpos, 475 - 3, false);}
			if jmusicvisible == true{
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 + 3, 520 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugemusicpos, 540 - 3, false);}
			
			break;
		
		case 1:
			draw_set_halign(fa_right);
			draw_set_color(#85b4ff);
			draw_text(room_width/2 - 60 - 200 - 100 + 225, 445, "SFX");
			draw_set_color(c_white);
			draw_text(room_width/2 - 60 - 200 - 100 + 227, 380, "Global Sound");
			draw_text(room_width/2 - 60 - 200 - 100 + 225, 510, "Music");
			
			//Jauge SFX
			if jsfxvisible == true{
			draw_set_color(#85b4ff);
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 +3, 455 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugesfxpos, 475 - 3, false);
			draw_set_color(c_white);}
			if jglobalevisible == true{
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 + 3, 390 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugeglobalepos, 410 - 3, false);}
			if jmusicvisible == true{
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 + 3, 520 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugemusicpos, 540 - 3, false);}
			
			
			break;
		
		case 2:
			draw_set_halign(fa_right);
			draw_set_color(#85b4ff);
			draw_text(room_width/2 - 60 - 200 - 100 + 225, 510, "Music");
			draw_set_color(c_white);
			draw_text(room_width/2 - 60 - 200 - 100 + 227, 380, "Global Sound");
			draw_text(room_width/2 - 60 - 200 - 100 + 225, 445, "SFX");
			
			//Jauge Music
			if jmusicvisible == true{
			draw_set_color(#85b4ff);
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 + 3, 520 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugemusicpos, 540 - 3, false);
			draw_set_color(c_white);}
			if jglobalevisible == true{
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 + 3, 390 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugeglobalepos, 410 - 3, false);}
			if jsfxvisible == true{
			draw_rectangle(room_width/2 - 60 - 200 - 100 + 240 +3, 455 + 3, room_width/2 - 120 + 240 - 3 + 100 - jaugesfxpos, 475 - 3, false);}
			
			break;
	}
}

//Switch Language

if language == true {
	switch(languageselect){
	
		case 0:
			draw_set_halign(fa_center);
			draw_set_color(#85b4ff);
			draw_text(room_width/2, 660, "< English >");
			break;
		
		case 1:
			draw_set_halign(fa_center);
			draw_set_color(#85b4ff);
			draw_text(room_width/2, 660, "< Francais >");
			break;
		
	}
}