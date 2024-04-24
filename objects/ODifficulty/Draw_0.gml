//////////////
//	Display	//
//////////////


//Set Drawing

draw_set_halign(fa_center)
draw_set_color(c_white)


//Display Title

draw_set_font(TitleFont)
draw_text(room_width/2, 50, "Select Difficulty")


switch(global.GMchoice){
// case 0 : solo case 2 : multi
// Pour affichier mouse et score en solo et pas en multi

case 0:

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

case 2 :

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

switch(global.GMchoice){
	
	case 0: //DEBUT GAMEMODE NORMAL

switch (selectdifficulty){
	
	case 1:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 200, "EASY")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = 1
			room_goto(Game);
		}
		
	break;
	
	case 2:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 300, "MEDIUM")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = 2
			room_goto(Game);
		}
		
	break;

	case 3:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 400, "HARD")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = 3
			room_goto(Game);
		}
		
	break;
	
	case 4:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 500, "Mouse Mode")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = 3
			room_goto(Game);
		}
		
	break;
	
	case 5:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 600, "Score Mode")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = 3
			room_goto(Game);
		}
		
	break;
}

	break; //FIN GAMEMODE NORMAL
	
	
	
	
	case 2: //DEBUT NOUVEAU GAMEMODE MULTI
	
	switch (selectdifficulty){
	
	case 1:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 300, "EASY")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = 1
			global.start_local = true
			room_goto(MultiGM);
		}
		
	break;
	
	case 2:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 400, "MEDIUM")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = 2
			global.start_local = true
			room_goto(MultiGM);
		}
		
	break;

	case 3:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 500, "HARD")
		
		if enter{
			audio_play_sound(Select, 3, false);
			global.difficulty = 3
			global.start_local = true
			room_goto(MultiGM);
		}
		
	break;
	}
	
	break;  //FIN NOUVEAU GAMEMODE MULTI
}