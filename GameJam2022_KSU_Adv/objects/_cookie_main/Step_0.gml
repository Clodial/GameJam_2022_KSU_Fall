/// @description Insert description here
// You can write your code in this editor

if(abs(GM_main_player.x - x) < GM_main_player.sprite_width 
	&& abs(GM_main_player.y - y) < GM_main_player.sprite_height){
	global.cookies--;
	if(!audio_is_playing(eat_cookie)){
		audio_play_sound(eat_cookie, 5, false, 0.3, 0, 1);
	}
	instance_destroy(id);
}