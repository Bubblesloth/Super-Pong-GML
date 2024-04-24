//Initial Position

ballheight = sprite_height

if room != TitleScreen{
x = room_width/2;
y = room_height/2;
}
else{
	x = room_width/2;
	y = room_height/2 - 150;
}


direction = choose(random_range(-15,15), random_range(165,195));

angle = 50
Ilyaeuunpoint = 0
dontmove = false
timerdm = 0
spawnfire = false
destroyfire = false
mask_index = sBalle

BallSpeed()