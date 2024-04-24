if global.firstlaunch == true{
if oIntroPart1.timer = 625 - oIntroPart1.firstL{
	enableponganim = true
}
	
if enableponganim == true{
	visible = true
	

	//AnimScale

	percent += curvespeed/60;
	//if (percent > 1) percent -= 1
	
	var Scale = animcurve_channel_evaluate(ScaleCurve, percent)

	image_xscale = Scale * curvepower +1
	image_yscale = Scale * curvepower +1
}
}
else visible = true