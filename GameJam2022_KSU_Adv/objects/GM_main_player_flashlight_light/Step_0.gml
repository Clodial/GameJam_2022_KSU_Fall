/// @description Insert description here
// You can write your code in this editor

//add weight to weapon
x = GM_main_player_flashlight.x;
y = GM_main_player_flashlight.y;

light[| eLight.X] = x;
light[| eLight.Y] = y;
light[| eLight.Direction] = point_direction(x, y, mouse_x, mouse_y);
light[| eLight.Range] = 200;
light[| eLight.Intensity] = 1;
light[| eLight.Flags] |= eLightFlags.Dirty; 
