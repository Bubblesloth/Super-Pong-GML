//Quitter

if echap{
	audio_play_sound(Select, 3, false)
	room_goto(rDifficulty)}
	

	////////////////////////
	//// MENU COMMANDES ////
	////////////////////////

if player!=3{


var up = global.up_pressed
var down = global.down_pressed
var left = global.left_pressed
var right = global.right_pressed

if right{
		commandsmulti += 1;
		audio_play_sound(Select, 3, false);
	}
	else if left{
		commandsmulti -= 1;
		audio_play_sound(Select, 3, false)
	}

	if commandsmulti > 2{
		commandsmulti = 0
	}
	else if commandsmulti < 0{
		commandsmulti = 2
	}
	
if player == 1{
	if enter{
		audio_play_sound(Select, 3, false);
		commandsP1 = commandsmulti
		commandsmulti+=1
		player = 2
	}
}

if player == 2{
	if enter == false{ //Pour pas que ça spam espace (jsp pourquoi j'ai pas fais espace_pressed mais ça change rien à part de l'opti inutile dans ce contexte on est pas en 1988 c'est bon[après relecture de ce passage de nombreux mois plus tard, je trouve ça honteux ce que j'ai dis, l'opti c'est important nan mais oh])
		PAble = true}
	if enter && PAble == true{
		audio_play_sound(Select, 3, false);
		if commandsmulti != commandsP1{
			if commandsP1 == 1 || commandsP1 == 2{
				if commandsmulti != 1 && commandsmulti !=2{
				commandsP2 = commandsmulti
				player = 3
				}
				else error = true //Ne peut pas mettre les mêmes keys pour les 2 players
			}
			else {
				commandsP2 = commandsmulti
				player = 3}
		}
		else error = true //Ne peut pas mettre les mêmes keys pour les 2 players
	}
}

}

	///////////////////////
	////  IN GAMEMODE  ////
	///////////////////////

else{
		//Commandes P1 (se trouve dans oGame)
		global.commandsetmulti = commandsP1

		//Commandes P2

		global.p2commandset = commandsP2
		
		global.multi = true //ça sert à savoir si on créer un ennemi ou un Player2
		room_goto(rGame)
}