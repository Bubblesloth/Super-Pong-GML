//Global variables setup

global.firstlaunch = true
global.difficulty = DIFFICULTY.EASY
// = false                  ||Y avait écrit ça j'ai pas compris au lieu de suppr commentaire
global.multi = false
global.online = false
global.multicommands = false //Sinon erreur oGame essaie de set les commandes multi
global.start_local = false //Provoque une erreur si je passe pas par oIcones car de base il était uniquement défini là-bas, du coup je le mets aussi ici


//Enum

difficulty_enum()


//End

room_goto(rTitleScreen)


//Random

randomize()

