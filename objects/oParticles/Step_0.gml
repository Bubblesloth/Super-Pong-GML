if timer == limtimer{


	if alpha == 0 incAlpha = true
	
	if alpha == 1 decAlpha = true
	
	limtimer = irandom_range(2*60,6*60);
	speed = random_range(0.1,1);
	x = random_range(0, room_width);
	y = random_range(0, room_height);
	timer = 0
		
}
else timer++;
	
if x > room_width + 2 x = x - room_width - 2;

alpha = clamp(alpha,0,1)

if incAlpha
	alpha +=0.01
if alpha == 1
	incAlpha = false

if decAlpha
	alpha -=0.01
if alpha == 0
	decAlpha = false