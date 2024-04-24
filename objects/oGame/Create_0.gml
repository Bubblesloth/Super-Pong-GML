musicOn = false

//FirstLaunch

if global.firstlaunch = false firstL = 59
else firstL = 0

//Debug

/*if room != Options{
	room_goto(Options)}*/

//Locales

spawntitlescreen = true
spawngame = true //pareil je pourrais même sûrement utiliser la variable d'au dessus mais jpp
spawntimer = true

//Globales

global.language = 0
global.commandset = 0
global.up = 0;
global.down = 0;
global.left = 0;
global.right = 0;
global.up_pressed = 0;
global.down_pressed = 0;
global.left_pressed = 0;
global.right_pressed = 0;
global.gsound = 100;	
global.sfx = 100;
global.music = 100;
global.volumemusic = (global.music/100) * (global.gsound/100)
global.volumesfx = (global.sfx/100) * (global.music/100)

//Constants

#macro enter (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
#macro echap (keyboard_check_pressed(vk_escape) ||keyboard_check_pressed(vk_backspace))

//Scripts

scr_load()

//ONLINE :

if global.online == true{
	
	rollback_define_input({
		up: [vk_up, ord("W")],
		down: [vk_down, ord("S")],
		left: [vk_left, ord("A")],
		right: [vk_right, ord("D")],
		_enter: [vk_enter, vk_space],
	})

	//Joueur 1
	rollback_define_player(oOnlineplayer);

	//Start Game
	if (!rollback_join_game())
	{
		rollback_create_game(2,false);	
	}
}

//Particles

if room == Game{
	var i_particles = 0
	while i_particles < 30{
		instance_create_layer(x,y, "Instances", oParticles);
		i_particles+=1
	}
	
}