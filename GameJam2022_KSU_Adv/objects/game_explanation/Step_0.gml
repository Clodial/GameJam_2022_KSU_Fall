/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_direct(vk_escape) && visible){
	visible = false;
	game_control_button.visible = true;
	game_play_button.visible = true;
	game_exit_button.visible = true;
	Game_Logo.visible = true;
	game_pointer_arrow_indicator.visible = true;
}