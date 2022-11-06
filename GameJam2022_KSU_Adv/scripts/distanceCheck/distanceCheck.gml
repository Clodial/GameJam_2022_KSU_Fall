// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function distanceCheck(xx, yy, chMove, chDir, wall, size){
	
	if(chDir == global.right || chDir == 0){
	    var inst_obj = instance_place(xx+chMove, yy, wall);
	    x = inst_obj.x - size;
	}
	if(chDir == global.left || chDir == 1){
	    var inst_obj = instance_place(xx-chMove, yy, wall);
	    x = inst_obj.x + inst_obj.sprite_width;
	}
	if(chDir == global.up || chDir == 2){
	    var inst_obj = instance_place(xx, yy-chMove, wall);
	    y = inst_obj.y + inst_obj.sprite_height;
	}
	if(chDir == global.down || chDir == 3){
	    var inst_obj = instance_place(xx, yy+chMove, wall);
	    y = inst_obj.y - size; 
	}

}