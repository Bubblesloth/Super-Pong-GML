//Set Commands

var up = global.up_pressed
var down = global.down_pressed
var left = global.left_pressed
var right = global.right_pressed

//////////////////
//	Selecting	//
//////////////////

//Commands

if up{
	audio_play_sound(Select, 3, false);
	selectdifficulty-=1}
	
if down{
	audio_play_sound(Select, 3, false);
	selectdifficulty+=1}
	
switch(global.Gamemodechoice){
	
	case GAMEMODE.CLASSIC:
	
		if global.multi == false && global.online == false{
			if selectdifficulty < 1{
				selectdifficulty=5}
	
			if selectdifficulty > 5{
				selectdifficulty=1}
		}
		else{	
			if selectdifficulty < 1{
				selectdifficulty=3}
	
			if selectdifficulty > 3{
				selectdifficulty=1}
		}
			
	break;
	
	
}