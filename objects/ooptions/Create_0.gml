optionselect = 0;
sousmenu = false;
commands = false;
sound = false;
language = false;
commandselect = global.commandset;
soundselect = 0;
languageselect = global.language;
entersm = false; //entersousmenu pour faire enter dans un sousmenu sans que ça confonde avec une catégorie
jaugeglobale = global.gsound;
jaugeglobalepos = 100;
jglobalevisible = true;
jaugesfx = global.sfx;
jaugesfxpos = 100;
jsfxvisible = true;
jaugemusic = global.music;
jaugemusicpos = 100;
jmusicvisible = true;

//Visibilité des barres de son

if (jaugeglobale <= 0){
	jglobalevisible = false}
else jglobalevisible = true

if (jaugesfx <= 0){
	jsfxvisible = false}
else jsfxvisible = true

if (jaugemusic <= 0){
	jmusicvisible = false}
else jmusicvisible = true