//////////////
//	Display	//
//////////////


//Set Drawing

draw_set_halign(fa_center)
draw_set_color(c_white)


//Display Title

draw_set_font(TitleFont)
draw_text(room_width/2, 50, "Select Difficulty")


switch(global.Gamemodechoice){
// case 0 : solo case 2 : multi
// Pour affichier mouse et score en solo et pas en multi

case GAMEMODE.CLASSIC:

	//Display EASY

	draw_set_font(GameFont)
	draw_text(room_width/2, 200, "EASY")

	//Display Medium

	draw_set_font(GameFont)
	draw_text(room_width/2, 300, "MEDIUM")

	//Display HARD

	draw_set_font(GameFont)
	draw_text(room_width/2, 400, "HARD")

	//Display Mouse

	draw_set_font(GameFont)
	draw_text(room_width/2, 500, "Mouse Mode")

	//Display Scoremode

	draw_set_font(GameFont)
	draw_text(room_width/2, 600, "Score Mode")

break;

case GAMEMODE.MULTI :

	//Display EASY

	draw_set_font(GameFont)
	draw_text(room_width/2, 300, "EASY")

	//Display Medium

	draw_set_font(GameFont)
	draw_text(room_width/2, 400, "MEDIUM")

	//Display HARD

	draw_set_font(GameFont)
	draw_text(room_width/2, 500, "HARD")

break;

}

//////////////////
//	Selecting	//
//////////////////

switch(global.Gamemodechoice){
	
	case GAMEMODE.CLASSIC: //DEBUT GAMEMODE NORMAL

switch (selectdifficulty){
	
	case 1:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 200, "EASY")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = DIFFICULTY.EASY;
			global.mousegamemode = false;
			room_goto(rGame);
		}

	break;
	
	case 2:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 300, "MEDIUM")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = DIFFICULTY.MEDIUM;
			global.mousegamemode = false;
			room_goto(rGame);
		}
		
	break;

	case 3:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 400, "HARD")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = DIFFICULTY.HARD;
			global.mousegamemode = false;
			room_goto(rGame);
		}
		
	break;
	
	case 4:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 500, "Mouse Mode")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = DIFFICULTY.MOUSEMODE;
			global.mousegamemode = true;
			room_goto(rGame);
		}
		
	break;
	
	case 5:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 600, "Score Mode")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = DIFFICULTY.SCOREMODE;
			global.mousegamemode = false;
			room_goto(rGame);
		}
		
	break;
}

	break; //FIN GAMEMODE NORMAL
	
	
	
	
	case GAMEMODE.MULTI: //DEBUT NOUVEAU GAMEMODE MULTI
	
	switch (selectdifficulty){
	
	case 1:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 300, "EASY")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = DIFFICULTY.EASY;
			global.mousegamemode = false
			global.start_local = true
			room_goto(rMultiGM);
		}
		
	break;
	
	case 2:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 400, "MEDIUM")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = DIFFICULTY.MEDIUM;
			global.mousegamemode = false
			global.start_local = true
			room_goto(rMultiGM);
		}
		
	break;

	case 3:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 500, "HARD")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = DIFFICULTY.HARD;
			global.mousegamemode = false
			global.start_local = true
			room_goto(rMultiGM);
		}
		
	break;
	}
	
	break;  //FIN NOUVEAU GAMEMODE MULTI
}