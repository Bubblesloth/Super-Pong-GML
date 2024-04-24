////////////////
// Soft Shake //
///////////////


//Pour quand la balle est en feu

if instance_exists(oFireball) softshake = true
else softshake = false

if (softshake)
{
	camera_set_view_pos(view_camera[0], view_x + random_range(-softrange, softrange), view_y + random_range(-softrange, softrange));	
}else{
	camera_set_view_pos(view_camera[0], view_x, view_y)	
}

//----------------