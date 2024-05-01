if instance_exists(oPlayer){
if oPlayer.drawbugtext == true{
	visible = true;
	if timer == 180{
	instance_destroy(oBalle);
	instance_destroy(oFireball);
	instance_destroy(oTrailFire);
	instance_create_layer(x,y, "Instances", oBalle);
	timer = 0;
	oPlayer.bugtimer = 0}
	else timer++
}
else visible = false
}