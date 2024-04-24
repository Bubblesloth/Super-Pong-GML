sprite_index = oBalle.sprite_index;
image_angle = oBalle.image_angle;
image_xscale = oBalle.image_xscale
image_yscale = oBalle.image_yscale

if alpha <= 0
	instance_destroy();

image_alpha = alpha
	
timer+=longueur;

alpha -= timer;
