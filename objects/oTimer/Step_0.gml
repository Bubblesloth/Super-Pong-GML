if timer < 240 timer++

if timer < 60{
	step="3";
}
if timer > 60 && timer < 120{
	step="2";
}
if timer > 120 && timer < 180 {
	step="1";
}
if timer > 180 && timer < 240 {
	step="START";
}
if timer >= 240{
	step=""
	start = true;
}