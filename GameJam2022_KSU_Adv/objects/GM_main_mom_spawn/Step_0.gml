/// @description Insert description here
// You can write your code in this editor

if(!momSpawn && global.dbLevel >= global.dbLevelMax){

	instance_create_layer(x, y, "player_layer", GM_main_mom);
	momSpawn = true;

}