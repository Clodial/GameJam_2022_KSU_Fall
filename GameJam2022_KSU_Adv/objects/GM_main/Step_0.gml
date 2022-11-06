/// @description Insert description here
// You can write your code in this editor

if(global.timer <= 0 && global.cookies > 9) {
	game_end();
}
else{
	timerShow = global.timer/max_timer * 100;
}
if(global.cookies <= 0 && global.timer > 0){
	game_end();
}