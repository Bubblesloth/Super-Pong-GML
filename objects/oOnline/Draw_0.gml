draw_set_halign(fa_center)
if global.waitingforplayer{
	draw_set_font(TitleFont);
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2 - 50, "Waiting for players...");
}
else{
	if tuto = true{
		draw_set_font(GameFont);
		draw_set_color(c_white);
		draw_text(room_width/2, 50, "You can play with Arrow Keys or W and S");
		//tutoprinted = true
	}
}