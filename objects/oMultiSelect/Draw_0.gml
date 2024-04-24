draw_set_halign(fa_center)
draw_set_font(TitleFont);
if select == 0{
	draw_set_color(#85b4ff);
	draw_text(room_width/2, room_height/2 - 50, "Online");
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2 + 50, "Local");
}
	
if select == 1{
	draw_set_color(#85b4ff);
	draw_text(room_width/2, room_height/2 + 50, "Local");
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2 - 50, "Online");
}

