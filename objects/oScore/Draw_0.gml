//Draw the Score

// 1 : 0

draw_set_font(ScoreFont);
draw_set_halign(fa_center);
if effectdo = true{
	draw_set_color(#85b4ff);}
else draw_set_color(c_white);
draw_text(room_width/2, room_height - 60, string(playerScore) + " : " + string(enemyScore));