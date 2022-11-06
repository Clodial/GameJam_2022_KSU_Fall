/// @description Insert description here
// You can write your code in this editor
draw_set_font(CookieCatcherFont);
draw_healthbar(32, 32, 150, 64, timerShow, c_black, c_red, c_lime, 0, true, true)
draw_healthbar(32, 64, 150, 96, global.dbLevel, c_black, c_lime, c_red, 0, true, true)
draw_sprite(main_GUI_cookie, 0, 32, 96);
draw_text(128, 144, string(global.cookies));
