	////////////////////////
	//// MENU COMMANDES ////
	////////////////////////

if player!=3{

//Set Font

draw_set_color(c_white);
draw_set_halign(fa_center);

//Option
draw_set_font(TitleFont);
draw_text(room_width/2, 50, "Multiplayer Commands");

//Commands

draw_set_halign(fa_center);
draw_set_font(GameFont);
if player == 1{
draw_text(room_width/2, room_height/2 - 80, "Commands P1 :");}
else{ draw_text(room_width/2, room_height/2 - 80, "Commands P2 :");}
draw_set_color(c_white);
draw_text(room_width/2 - 60 - 200, room_height/2, "Arrow Keys"); //200 pixels -> 100pix de chq côtés ->
draw_text(room_width/2, room_height/2, "QWERTY"); //QWERTY prend 120 pixels donc 120 / 2 = 60	||	    100 - 40 = 60 -> 200 - 40 = 160 écrit en dessous
draw_text(room_width/2 + 60 + 160, room_height/2, "AZERTY"); //120 pixels -> 60pixels de chq côtés ->

//Switch Commands

switch(commandsmulti){
	
		case 0:
			draw_set_halign(fa_center);
			draw_set_color(#85b4ff);
			draw_text(room_width/2 - 60 - 200, room_height/2, "Arrow Keys");
			draw_set_color(c_white);
			draw_text(room_width/2, room_height/2, "QWERTY");
			draw_text(room_width/2 + 60 + 160, room_height/2, "AZERTY");
			break;
		
		case 1:
			draw_set_halign(fa_center);
			draw_set_color(#85b4ff);
			draw_text(room_width/2, room_height/2, "QWERTY");
			draw_set_color(c_white);
			draw_text(room_width/2 - 60 - 200, room_height/2, "Arrow Keys");
			draw_text(room_width/2 + 60 + 160, room_height/2, "AZERTY");
			break;
		
		case 2:
			draw_set_halign(fa_center);
			draw_set_color(#85b4ff);
			draw_text(room_width/2 + 60 + 160, room_height/2, "AZERTY");
			draw_set_color(c_white);
			draw_text(room_width/2 - 60 - 200, room_height/2, "Arrow Keys");
			draw_text(room_width/2, room_height/2, "QWERTY");
			break;
	}
	
//ERROR

	if error == true{
		draw_text(room_width/2, room_height/2 + 80, "You cannot assign the same keys to both players");
	}
}