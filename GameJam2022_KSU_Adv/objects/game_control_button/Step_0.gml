/// @description Insert description here
// You can write your code in this editor

if(mouse_y < (y + sprite_height) 
		&& mouse_y > y 
		&& mouse_x < (x + sprite_width)
		&& mouse_x > x){
	game_pointer_arrow_indicator.x = x+256;
	game_pointer_arrow_indicator.y = y;
	if(mouse_check_button_pressed(mb_left)){
		game_explanation.visible = true;
		visible = false;
		game_play_button.visible = false;
		game_exit_button.visible = false;
		Game_Logo.visible = false;
		game_pointer_arrow_indicator.visible = false;
	}
		
}
