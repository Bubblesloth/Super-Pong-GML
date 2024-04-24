function scr_load(){

if file_exists("save.sav"){
	
	ini_open("save.sav")
	global.language = ini_read_real("save1", "language", 0);
	global.commandset = ini_read_real("save1", "commands", 0);
	global.gsound = ini_read_real("save1", "gsound", 100);
	global.sfx = ini_read_real("save1", "sfx", 100);
	global.music = ini_read_real("save1", "music", 100);
	ini_close();

}

}