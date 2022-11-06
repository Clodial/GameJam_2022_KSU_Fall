/// @description Insert description here
// You can write your code in this editor

if(abs(GM_main_player.x - x) < GM_main_player.sprite_width 
	&& abs(GM_main_player.y - y) < GM_main_player.sprite_height 
	&& visible){
	global.dbLevel += baseCollide;
	if(!audio_is_playing(snd_id)){
		audio_play_sound(snd_id, snd_channel, false, snd_volume, 0, 1);
	}
	visible = false;
	alarm[0] = room_speed * .5;
}