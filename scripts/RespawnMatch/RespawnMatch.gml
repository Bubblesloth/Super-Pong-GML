/*Cette fonction va permettre (avec des variables qui interagissent dans les objets concercés) de faire respawn oPLayer, oBalle et oEnnemie
quand un but est marqué et de les faire attendre un peu*/

function RespawnMatch(){

	//Balle
	
	oBalle.x = room_width/2;
	if room = TitleScreen{
	oBalle.y = room_height/2 - 150;}
	else oBalle.y = room_height/2
	oBalle.timerdm = 1;
	oBalle.image_angle = 0
	oBalle.image_xscale = 1
	oBalle.image_yscale = 1
	BallSpeed()
	instance_destroy(oFireball)
	oBalle.sprite_index = sBalle
	instance_destroy(oTrailFire)
	oBalle.spawnfire = false
	//Player
	
	oPlayer.x = 100;
	oPlayer.y = room_height/2;
	oPlayer.dontmove = true;
	oPlayer.timerdm = 1;
	
	//Ennemie
	if !instance_exists(oPlayer2){
	
	oEnnemie.x = room_width - 100
	oEnnemie.y = room_height/2
	oEnnemie.dontmove = true;
	oEnnemie.timerdm = 1;
	}
	else{
		oPlayer2.x = room_width - 100
		oPlayer2.y = room_height/2
		oPlayer2.dontmove = true;
		oPlayer2.timerdm = 1;
	}
}