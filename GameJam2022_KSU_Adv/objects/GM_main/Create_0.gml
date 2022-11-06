/// @description Global Variable Instantiation
// You can write your code in this editor

persistent = true;
x = 0;
y = 0

global.dbLevel = 0;
global.dbLevelMax = 100;

max_timer = 120;
global.timer = 120; // 2 minutes
timerShow = global.timer/max_timer * 100;

global.move = 1;
global.up = ord("W");
global.down = ord("S");
global.left = ord("A");
global.right = ord("D"); 

global.cookies = 10;

alarm[1] = room_speed; // remove a second from the timer
