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

// Pour affichier mouse et score en solo et pas en multi

case GAMEMODE.CLASSIC:

	if global.multi == false && global.online == false{
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
	}
	else{
		//Display EASY

		draw_set_font(GameFont)
		draw_text(room_width/2, 300, "EASY")

		//Display Medium

		draw_set_font(GameFont)
		draw_text(room_width/2, 400, "MEDIUM")

		//Display HARD

		draw_set_font(GameFont)
		draw_text(room_width/2, 500, "HARD")
	}

break;

}

//////////////////
//	Selecting	//
//////////////////

switch(global.Gamemodechoice){
	
	case GAMEMODE.CLASSIC: //DEBUT GAMEMODE NORMAL

		//SOLO
		if global.multi == false && global.online == false{
			switch (selectdifficulty){
	
			case 1:
	
				draw_set_font(GameFont)
				draw_set_color(#85b4ff)
				draw_text(room_width/2, 200, "EASY")
		
				if enter{
					audio_play_sound(Select, 3, false);
					global.difficulty = DIFFICULTY.EASY;
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
					room_goto(rGame);
				}
		
			break;
	
	case 5:
	
		draw_set_font(GameFont)
		draw_set_color(#85b4ff)
		draw_text(room_width/2, 600, "Score Mode")
		
		if enter{
			audio_play_sound(Nope, 3, false);
			/*global.difficulty = DIFFICULTY.SCOREMODE;
			room_goto(rGame);*/
		}
		
	break;
}
		}
		//MULTI
		else{
			switch (selectdifficulty){
	
				case 1:
	
					draw_set_font(GameFont)
					draw_set_color(#85b4ff)
					draw_text(room_width/2, 300, "EASY")
		
					if enter{
						audio_play_sound(Select, 3, false);
						global.difficulty = DIFFICULTY.EASY;
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
						global.start_local = true
						room_goto(rMultiGM);
					}
		
				break;
				}
		}
	break; //FIN GAMEMODE NORMAL
	
	
}