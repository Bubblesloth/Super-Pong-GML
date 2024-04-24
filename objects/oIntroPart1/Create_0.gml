visible = false;
image_speed  = 0;
image_index = 0;
timer = 0;

//Animation Curve

enablesuperanim = false;
curveY = animcurve_get_channel(TremblingText, "y");
curveX = animcurve_get_channel(TremblingText, "x");
percent = 0;
movepower = 10; //si la curve bouge bcp ou pas
curvespeed = 2;

if global.firstlaunch = false firstL = 499
else firstL = 0