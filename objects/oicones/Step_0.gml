if echap{
	audio_play_sound(Select, 3, false)
	room_goto(TitleScreen)}

//Déplacements

var up = global.up_pressed
var down = global.down_pressed
var left = global.left_pressed
var right = global.right_pressed

if right{
	menu += 1;
	audio_play_sound(Select, 3, false);}
	
if left{
	menu -= 1;
	audio_play_sound(Select, 3, false);}

if menu > 3{
	menu = 0}
	
	
if menu < 0{
	menu = 3}

switch (menu){
	case 0 :
	image_index = 0;
	global.GMchoice = 0;
	if enter{
		audio_play_sound(Select, 3, false);
		room_goto(Difficulty);}
	
	break;
	
	case 1 :
	image_index = 1;
		global.GMchoice = 1;
	
	break;
	
	case 2 :
	
	image_index = 2;
	global.GMchoice = 2;
	if enter{
		audio_play_sound(Select, 3, false);
		room_goto(MultiGM);}
	
	break;
	
	case 3 :
	image_index = 3;
	global.GMchoice = 3;
	if enter{
		audio_play_sound(Select, 3, false);
		room_goto(Game);}
	
	break;
}

if keyboard_check_pressed(ord("T")) show_message(menu)
// Faire que quand t'es sur un gamemode, qu'il grossisse et rétrécisse legerement (mdr les fotes)