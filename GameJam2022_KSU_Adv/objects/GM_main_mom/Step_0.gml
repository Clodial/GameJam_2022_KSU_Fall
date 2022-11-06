/// @description Insert description here
// You can write your code in this editor


switch (curState) {
	case enemyState.randomMove:
		if(collision_line(x + sprite_width/2, y + sprite_height/2, GM_main_player.x + (GM_main_player.sprite_width/2), 
			GM_main_player.y+(GM_main_player.sprite_height/2), main_wall, false, true) == noone ){
			curState = enemyState.chase;
		}
		if(moveState == 1){
			//left
			if(!place_meeting(x - enSpeed, y, main_wall)){
				x -= enSpeed;
			}else if(place_meeting(x - enSpeed, y, main_wall)){
				distanceCheck(x, y, enSpeed, 1, main_wall, sprite_width);
				moveState = irandom(3) + 1
				stateTimer = timerMax
				if(moveState == 0){
					curState = enemyState.pause
				}
			}
			image_speed = en_walk_speed
		}
		if(moveState == 2){
			//right
			if(!place_meeting(x + enSpeed, y, main_wall)){
				x += enSpeed;
			}else if(place_meeting(x + enSpeed, y, main_wall)){
				distanceCheck(x, y, enSpeed, 0, main_wall, sprite_width);
				moveState = irandom(3) + 1
				stateTimer = timerMax
				if(moveState == 0){
					curState = enemyState.pause
				}
			}
			image_speed = en_walk_speed
		}
		if(moveState == 3){
			//up
			if(!place_meeting(x, y - enSpeed, main_wall) ){
				y -= enSpeed;
			}else if(place_meeting(x, y - enSpeed, main_wall)){
				distanceCheck(x, y, enSpeed, 2, main_wall, sprite_width);
				if(stateTimer <= 0){
					moveState = irandom(3) + 1
					stateTimer = timerMax
					if(moveState == 0){
						curState = enemyState.pause
					}
				}
			}
			image_speed = en_walk_speed
		}
		if(moveState == 4){
			//down	
			if(!place_meeting(x, y + enSpeed, main_wall)){
				y += enSpeed;
			}else if(place_meeting(x, y +enSpeed, main_wall)){
				distanceCheck(x, y, enSpeed, 3, main_wall, sprite_width);
				moveState = irandom(3) + 1
				stateTimer = timerMax
				if(moveState == 0){
					curState = enemyState.pause
				}
			}
			image_speed = en_walk_speed
		}
		stateTimer -= 1
		if(stateTimer <= 0){
			moveState = irandom(4)
			startTimer = timerMax
			if(moveState == 0){
				curState = enemyState.pause
			}
		}
		break;
	case enemyState.pause:
		if(collision_line(x + sprite_width/2, y + sprite_height/2, GM_main_player.x + (GM_main_player.sprite_width/2), 
			GM_main_player.y+(GM_main_player.sprite_height/2), main_wall, false, true) == noone ){
			curState = enemyState.chase;
		}
		stateTimer -= 1
		if(stateTimer <= 0){
			moveState = irandom(4)
			stateTimer = timerMax
			if(moveState != 0){
				curState = enemyState.randomMove
			}
		}
		image_index = 0
		image_speed = 0
		break;
	case enemyState.chase:
		if(collision_line(x + sprite_width/2, y + sprite_height/2, GM_main_player.x + (GM_main_player.sprite_width/2), 
			GM_main_player.y+(GM_main_player.sprite_height/2), main_wall, false, true) != noone ){
			moveState = irandom(4)
			stateTimer = timerMax
			if(moveState != 0){
				curState = enemyState.randomMove
			}else{
				curState = enemyState.pause
			}
		}else{
			//move_towards_point(main_player.x, main_player.y, global.move);
			if(point_distance(x, y, GM_main_player.x, GM_main_player.y)){
				if((GM_main_player.x - x) > 0){
					//move right
					if(!place_meeting(x + enSpeed, y, main_wall)){
						x += enSpeed;
					}else if(place_meeting(x + enSpeed, y, main_wall)){
						distanceCheck(x, y, enSpeed, 0, main_wall, sprite_width);
					}
				}
				if((GM_main_player.x - x) < 0){
					//move left
					if(!place_meeting(x - enSpeed, y, main_wall)){
						x -= enSpeed;
					}else if(place_meeting(x - enSpeed, y, main_wall)){
						distanceCheck(x, y, enSpeed, 1, main_wall, sprite_width);
					}
				}
				if((GM_main_player.y - y) > 0){
					//move down
					if(!place_meeting(x, y + enSpeed, main_wall)){
						y += enSpeed;
					}else if(place_meeting(x, y + enSpeed, main_wall)){
						distanceCheck(x, y, enSpeed, 3, main_wall, sprite_height);
					}
				}
				if((GM_main_player.y - y) < 0){
					//move up
					if(!place_meeting(x, y - enSpeed, main_wall)){
						y -= enSpeed;
					}else if(place_meeting(x, y - enSpeed, main_wall)){
						distanceCheck(x, y, enSpeed, 2, main_wall, sprite_height);
					}
				}
				image_speed = en_walk_speed
			}else{
				image_speed = 0
				image_index = 0
			}
		}
		break;
	default:
		break;
}

if(abs(GM_main_player.x - GM_main_mom.x) < GM_main_player.sprite_width 
	&& abs(GM_main_player.y - GM_main_mom.y) < GM_main_player.sprite_height){
	game_end();	
}