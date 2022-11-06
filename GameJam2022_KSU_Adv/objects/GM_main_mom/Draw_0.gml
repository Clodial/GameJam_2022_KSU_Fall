/// @description testing purposes only
// You can write your code in this editor

if(collision_line(x + sprite_width/2, y + sprite_height/2, GM_main_player.x + (GM_main_player.sprite_width/2), 
			GM_main_player.y+(GM_main_player.sprite_height/2), main_wall, false, true) == noone){
	draw_line_color(x, y, GM_main_player.x, GM_main_player.y, c_red, c_red)
}
draw_self();

