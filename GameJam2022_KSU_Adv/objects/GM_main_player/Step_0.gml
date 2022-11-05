/// @description Main Player Actions

/**
*
*	Lighting features
*
**/
polygon = polygon_from_instance(id);

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
    }
	upRelease = 0;
	image_speed = .5;
}
if(keyboard_check(global.down)){
    if(!place_meeting(x, y+global.move, main_wall)){
        y += global.move; 
    }else{
        distanceCheck(x, y, global.move, global.down, main_wall, sprite_height); 
    }
	downRelease = 0;
	image_speed = .5;
}
if(keyboard_check(global.left)){
    if(!place_meeting(x-global.move, y, main_wall)){
        x -= global.move;
    }else{
        distanceCheck(x, y, global.move, global.left, main_wall, sprite_width); 
    }
	leftRelease = 0;
	image_speed = .5;
	sprite_index = test_player_left;
}
if(keyboard_check(global.right)){
    if(!place_meeting(x+global.move, y, main_wall)){
        x += global.move;
    }else{
        distanceCheck(x, y, global.move, global.right, main_wall, sprite_width); 
    }
	rightRelease = 0;
	image_speed = .5;
	sprite_index = test_player_right;
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
