/// @description Follow Player Object
// You can write your code in this editor

//make the x and y follow the point between the mouse and the player
 
 if(followPlayer){
	sprite_index = cr_none
	x += (GM_main_player.x - x) * .05;
	y += (GM_main_player.y - y) * .05;
 }else{
	if(abs((mouse_x - GM_main_player.x)/4) < 900){
		x +=  (((mouse_x - GM_main_player.x)/2 + GM_main_player.x) - x) * .1;
	}else{
		if((mouse_x - GM_main_player.x)/4 < 0){
			x +=  ((-900 + GM_main_player.x) - x) * .01;
		}else{
			x +=  ((900 + GM_main_player.x) - x) * .01;
		}
	}
	if(abs((mouse_y - GM_main_player.y)/4) < 900){
		y += (((mouse_y - GM_main_player.y)/4 + GM_main_player.y) - y) * .1;
	}else{
		if((mouse_y - GM_main_player.y)/2 < 0){
			y += ((-900 + GM_main_player.y) - y) * .01;
		}else{
			y += ((900 + GM_main_player.y) - y) * .01;
		}
	}
 }	