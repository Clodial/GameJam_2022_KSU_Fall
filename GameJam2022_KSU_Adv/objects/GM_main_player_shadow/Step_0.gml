/// @description Follow Player Object
// You can write your code in this editor

//make the x and y follow the point between the mouse and the player
playerX = GM_main_player.x + GM_main_player.sprite_width/2;
playerY = GM_main_player.y + GM_main_player.sprite_height/2;
 
 if(followPlayer){
	sprite_index = cr_none
	x += (playerX - x) * .05;
	y += (playerY - y) * .05;
 }else{
	if(abs((mouse_x - playerX)/4) < rateOfMouseTravel){
		x +=  (((mouse_x - playerX)/2 + playerX) - x) * rateOfMouseFollow;
	}else{
		if((mouse_x - playerX)/4 < 0){
			x +=  ((-rateOfMouseTravel + playerX) - x) * rateOfMouseFollow;
		}else{
			x +=  ((rateOfMouseTravel + playerX) - x) * rateOfMouseFollow;
		}
	}
	if(abs((mouse_y - playerY)/4) < rateOfMouseTravel){
		y += (((mouse_y - playerY)/4 + playerY) - y) * rateOfMouseFollow;
	}else{
		if((mouse_y - playerY)/2 < 0){
			y += ((-rateOfMouseTravel + playerY) - y) * rateOfMouseFollow;
		}else{
			y += ((rateOfMouseTravel + playerY) - y) * rateOfMouseFollow;
		}
	}
 }	
 if(mouse_check_button(mb_left)){
	followPlayer = false;
 } else { followPlayer = true; }
 show_debug_message("camera position x: " + string(x));
 show_debug_message("camera position y: " + string(y));