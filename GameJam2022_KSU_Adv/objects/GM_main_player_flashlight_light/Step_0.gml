/// @description Insert description here
// You can write your code in this editor

var dis = sprite_width/2;
var dir = point_direction(GM_main_player.x + (GM_main_player.sprite_width/2),
	GM_main_player.y + (GM_main_player.sprite_height/2),
	mouse_x, mouse_y);

//add weight to weapon
x = GM_main_player_flashlight.x;
y = GM_main_player_flashlight.y;

light[| eLight.X] = GM_main_player_flashlight.x;
light[| eLight.Y] = GM_main_player_flashlight.y;
light[| eLight.Direction] = point_direction(x, y, mouse_x, mouse_y);
light[| eLight.Intensity] = 1;
