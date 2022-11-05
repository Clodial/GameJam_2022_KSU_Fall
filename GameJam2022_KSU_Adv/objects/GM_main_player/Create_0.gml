/// @description Player Initiation
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Create a sprite polygon for this instance
polygon = polygon_from_instance(id);

// This is a static shadow caster (it never changes its polygon)
//flags |= eShadowCasterFlags.Static;

instance_create_layer(x + (sprite_width), y + (sprite_height/2), "player_layer", GM_main_player_weapon);

upRelease = 0;
downRelease = 0;
leftRelease = 0;
rightRelease = 0;
stopRate = 4;

upDragCur = 1;
downDragCur = 1;
leftDragCur = 1;
rightDragCur = 1;

image_speed = 0;