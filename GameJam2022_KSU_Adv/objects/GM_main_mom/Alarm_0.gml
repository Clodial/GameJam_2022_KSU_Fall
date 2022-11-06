/// @description play the mommy alarm
// You can write your code in this editor
if(point_distance(x, y, GM_main_player.x, GM_main_player.y) > 320){
	audio_play_sound(honey_spook, 1, false, volume_rate, 0, 1);
}else{
	audio_play_sound(honey_spook, 1, false, volume_rate_close, 0, 1);
}
alarm[0] = room_speed * mom_timer_audio_max;


