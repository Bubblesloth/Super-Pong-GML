if room == Game || room == Difficulty{
	if echap{
		audio_play_sound(Select, 3, false)
		if (global.multi) global.multi=false
		room_goto(SelectGM)}
}

// TITLESCREEN

if room == TitleScreen{

if global.firstlaunch = true{
if oIntroPart1.timer == 739 - firstL - oIntroPart1.firstL{
	instance_create_layer(x, y, "Instances", oBalle);
	instance_create_layer(x, y, "Instances", oPlayer);
	instance_create_layer(x, y, "Instances", oEnnemie);
	instance_create_layer(x, y, "Instances", oScore);
	instance_create_layer(x, y, "Instances", oSoftLockBall);
	oScore.visible = false}
}
else{
		if spawntitlescreen = true{
		instance_create_layer(x, y, "Instances", oBalle);
		instance_create_layer(x, y, "Instances", oPlayer);
		instance_create_layer(x, y, "Instances", oEnnemie);
		instance_create_layer(x, y, "Instances", oScore);
		instance_create_layer(x, y, "Instances", oSoftLockBall);
		oScore.visible = false
		spawntitlescreen = false}
}
}

//Timer


if room == Game{

	if spawntimer = true{
		instance_create_layer(x, y, "Instances", oTimer);
		spawntimer=false
	}
	
	//Pour Game normale
	
	if oTimer.start == true && spawngame=true{
		instance_create_layer(x, y, "Instances", oBalle);
		instance_create_layer(x, y, "Instances", oPlayer);
		instance_create_layer(x, y, "Instances", oScore);
		if (!global.multi) instance_create_layer(x, y, "Instances", oEnnemie);
		else instance_create_layer(x, y, "Instances", oPlayer2);
	spawngame=false
	}
	
	//Pour Mode 2

}

// COMMANDS SETTINGS

//OFFLINE

if (!global.online){

	switch(global.commandset){
	
		case 0:
	
		global.up = keyboard_check(vk_up);
		global.down = keyboard_check(vk_down);
		global.left = keyboard_check(vk_left);
		global.right = keyboard_check(vk_right);
	
		global.up_pressed = keyboard_check_pressed(vk_up);
		global.down_pressed = keyboard_check_pressed(vk_down);
		global.left_pressed = keyboard_check_pressed(vk_left);
		global.right_pressed = keyboard_check_pressed(vk_right);
	
		break;

		case 1:
	
		global.up = keyboard_check(ord("W"));
		global.down = keyboard_check(ord("S"));
		global.left = keyboard_check(ord("A"));
		global.right = keyboard_check(ord("D"));
	
		global.up_pressed = keyboard_check_pressed(ord("W"));
		global.down_pressed = keyboard_check_pressed(ord("S"));
		global.left_pressed = keyboard_check_pressed(ord("A"));
		global.right_pressed = keyboard_check_pressed(ord("D"));

		break;

		case 2:
	
		global.up = keyboard_check(ord("Z"));
		global.down = keyboard_check(ord("S"));
		global.left = keyboard_check(ord("Q"));
		global.right = keyboard_check(ord("D"));
	
		global.up_pressed = keyboard_check_pressed(ord("Z"));
		global.down_pressed = keyboard_check_pressed(ord("S"));
		global.left_pressed = keyboard_check_pressed(ord("Q"));
		global.right_pressed = keyboard_check_pressed(ord("D"));

		break;
	}

	//P1multilocal
	if global.multi == true{
	
		switch(global.commandsetmulti){
	
		case 0:
	
		global.up = keyboard_check(vk_up);
		global.down = keyboard_check(vk_down);
		global.left = keyboard_check(vk_left);
		global.right = keyboard_check(vk_right);
	
		break;

		case 1:
	
		global.up = keyboard_check(ord("W"));
		global.down = keyboard_check(ord("S"));
		global.left = keyboard_check(ord("A"));
		global.right = keyboard_check(ord("D"));
	
		break;

		case 2:
	
		global.up = keyboard_check(ord("Z"));
		global.down = keyboard_check(ord("S"));
		global.left = keyboard_check(ord("Q"));
		global.right = keyboard_check(ord("D"));

		break;
		}
	
	}

	// PLAYER 2

	if (global.multi == true){
		switch(global.p2commandset){
		
			case 0:
			
			global.player2_up = keyboard_check(vk_up);
			global.player2_down = keyboard_check(vk_down);
			global.player2_left = keyboard_check(vk_left);
			global.player2_right = keyboard_check(vk_right);
	
			break;
	
			case 1:
			
			global.player2_up = keyboard_check(ord("W"));
			global.player2_down = keyboard_check(ord("S"));
			global.player2_left = keyboard_check(ord("A"));
			global.player2_right = keyboard_check(ord("D"));
	
			break;
	
			case 2:
		
			global.player2_up = keyboard_check(ord("Z"));
			global.player2_down = keyboard_check(ord("S"));
			global.player2_left = keyboard_check(ord("Q"));
			global.player2_right = keyboard_check(ord("D"));
	
			break;
		}
	}
}
	

/////////////////////
// MULTI COMMANDES //
/////////////////////

//debug

/*if keyboard_check(ord("R")){
	show_message(global.musicloop)}*/