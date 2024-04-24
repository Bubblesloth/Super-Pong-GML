if effect == true{
	if timer == 0 effectdo = true
	if timer == 10 effectdo = false
	if timer == 20 effectdo = true
	if timer == 30 effectdo = false
	if timer == 40 effectdo = true
	if timer == 50{
		effectdo = false
		effect = false
		timer = 0}
	else timer++
}