function scr_save(){
          
if file_exists("save.sav")
	{
		file_delete("save.sav");
	}
	ini_open("save.sav");
		ini_write_real("save1", "language", global.language);
		ini_write_real("save1", "commands", global.commandset);
		ini_write_real("save1", "gsound", global.gsound);
		ini_write_real("save1", "sfx", global.sfx);
		ini_write_real("save1", "music", global.music);
	ini_close()

}