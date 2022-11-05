/// @description weapon positioning around player
// You can write your code in this editor

//weapon controls based on mouse input
var dis = sprite_width/2;
var dir = point_direction(GM_main_player.x + (GM_main_player.sprite_width/2),
	GM_main_player.y + (GM_main_player.sprite_height/2),
	mouse_x, mouse_y);

// Set weapon location
xx = (GM_main_player.x + (GM_main_player.sprite_width/2));
yy = (GM_main_player.y + (GM_main_player.sprite_height/2));

//add weight to weapon
x = (xx + (lengthdir_x(dis, dir)));
y = (yy + (lengthdir_y(dis, dir)));

image_angle = dir;
