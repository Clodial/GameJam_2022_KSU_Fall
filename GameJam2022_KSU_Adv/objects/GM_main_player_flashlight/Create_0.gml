/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x + (sprite_width), y + (sprite_height/2), "lighting_layer", GM_main_player_flashlight_light);

global.player_weapon_attackEvent = false;
global.player_weapon_chargeEvent = false;
global.player_weapon_baseEvent = true;
atkEventCounter = 0;
atkEventCounterMax = 200;

chargeEventCounter = 0;
chargeEventCounterMax = 200;

baseDis = sprite_width/2;
maxDis = sprite_width;
minDis = sprite_width/4;

