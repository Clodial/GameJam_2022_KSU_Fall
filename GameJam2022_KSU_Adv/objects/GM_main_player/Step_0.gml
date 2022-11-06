/// @description Main Player Actions


/***
* 
* Main Movement controls
*
***/
if(keyboard_check(global.up)){
    if(!place_meeting(x, y - global.move, main_wall)){
        y -= global.move;
    }else{
        distanceCheck(x, y, global.move, global.up, main_wall, sprite_height); 
		if(global.dbLevel + dbObstacleHitAdd >= global.dbLevelMax){
			global.dbLevel = global.dbLevelMax;
		}else{
			global.dbLevel += dbObstacleHitAdd;
		}
		checkIfWallHit();
    }
	upRelease = 0;
	sprite_index = lil_dude_up;
	image_speed = 4/room_speed;
}
if(keyboard_check(global.down)){
    if(!place_meeting(x, y+global.move, main_wall)){
        y += global.move; 
    }else{
        distanceCheck(x, y, global.move, global.down, main_wall, sprite_height);
		if(global.dbLevel + dbObstacleHitAdd >= global.dbLevelMax){
			global.dbLevel = global.dbLevelMax;
		}else{
			global.dbLevel += dbObstacleHitAdd;
		}
		checkIfWallHit();
    }
	downRelease = 0;
	sprite_index = lil_dude_down;
	image_speed = 4/room_speed;
}
if(keyboard_check(global.left)){
    if(!place_meeting(x-global.move, y, main_wall)){
        x -= global.move;
    }else{
        distanceCheck(x, y, global.move, global.left, main_wall, sprite_width);
		if(global.dbLevel + dbObstacleHitAdd >= global.dbLevelMax){
			global.dbLevel = global.dbLevelMax;
		}else{
			global.dbLevel += dbObstacleHitAdd;
		}
		checkIfWallHit();
    }
	leftRelease = 0;
	sprite_index = lil_dude_left;
	image_speed = 4/room_speed;
}
if(keyboard_check(global.right)){
    if(!place_meeting(x+global.move, y, main_wall)){
        x += global.move;
    }else{
        distanceCheck(x, y, global.move, global.right, main_wall, sprite_width);
		if(global.dbLevel + dbObstacleHitAdd >= global.dbLevelMax){
			global.dbLevel = global.dbLevelMax;
		}else{
			global.dbLevel += dbObstacleHitAdd;
		}
		checkIfWallHit();
    }
	rightRelease = 0;
	sprite_index = lil_dude_right;
	image_speed = 4/room_speed;
}


if(keyboard_check_released(global.up)){
	upRelease = stopRate;
	upDragCur = 1;
}
if(keyboard_check_released(global.down)){
    downRelease = stopRate;
	downpDragCur = 1;
}
if(keyboard_check_released(global.left)){
	leftRelease = stopRate;
	leftDragCur = 1;
}
if(keyboard_check_released(global.right)){
	rightRelease = stopRate;
	rightDragCur = 1;
}

if(upRelease > 0){
	if(!place_meeting(x, y - (global.move/upDragCur), main_wall)){
        y -= (global.move/upDragCur);
    }else{
        distanceCheck(x, y, (global.move/upDragCur), global.up, main_wall, sprite_height); 
    }
	upRelease -= 1
	image_index = 0
	image_speed = 0
}
if(downRelease > 0){
	if(!place_meeting(x, y+(global.move/downDragCur), main_wall)){
        y += (global.move/downDragCur); 
    }else{
        distanceCheck(x, y, (global.move/downDragCur), global.down, main_wall, sprite_height); 
    }
	downRelease -= 1
	image_index = 0
	image_speed = 0
}
if(leftRelease > 0){
	if(!place_meeting(x-(global.move/leftDragCur), y, main_wall)){
        x -= (global.move/leftDragCur);
    }else{
        distanceCheck(x, y, (global.move/leftDragCur), global.left, main_wall, sprite_width); 
    }
	leftRelease -= 1
	image_index = 0
	image_speed = 0
}
if(rightRelease > 0){
	if(!place_meeting(x+(global.move/rightDragCur), y, main_wall)){
	x += (global.move/rightDragCur);
	}else{
        distanceCheck(x, y, (global.move/rightDragCur), global.right, main_wall, sprite_width); 
    }
	rightRelease -= 1
	image_index = 0
	image_speed = 0
}

if(keyboard_check(global.right) 
	|| keyboard_check(global.left) 
	|| keyboard_check(global.up) 
	|| keyboard_check(global.down)){
	isMoving = true;
} else {
	isMoving = false;
	addStepCounter = addStepCounterMax;
}

if(isMoving){
	addStepCounter--;
	if(addStepCounter <= 0) {
		if(global.dbLevel + dbStepAdd >= global.dbLevelMax){
			global.dbLevel = global.dbLevelMax;
		}else{
			global.dbLevel += dbStepAdd;
		}
		addStepCounter = addStepCounterMax;
	}
	if(!audio_is_playing(footsteps)){
		audio_play_sound(footsteps, 3, true, .03, 0, 1);
	}
} else {
	stopStepCounter--;
	if(stopStepCounter <= 0
		&& !(global.dbLevel >= global.dbLevelMax)){
		if(global.dbLevel >= dbStepAdd){
			global.dbLevel -= dbStepAdd;
		} else {
			global.dbLevel = 0;
		}
		stopStepCounter = stopStepCounterMax;
	}
	audio_stop_sound(footsteps);
}

function checkIfWallHit(){
	if(!audio_is_playing(wall_bump)){
		audio_play_sound(wall_bump, 2, false, .01, 0, 1);
	}
}