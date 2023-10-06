draw_set_font(fnt_menu);
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height / 2;

var margin = 100;

var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for(var i = 0; i < opt_max; i++){

	var y2 = y1 + (margin * i);
	var string_w = string_width(menu_opt[i]);
	var string_h = string_height(menu_opt[i]);
	
	if(index == i){	
		draw_set_color(c_yellow);	
	}else{
		draw_set_color(-1);	
	}
	
	if(point_in_rectangle(m_x,m_y, x1 - string_w / 2, y2 - string_h /2, x1 + string_w / 2, y2 + string_h / 2)){
	
		draw_set_color(c_yellow);
		index = i;
	
	}
	
	draw_text(x1,y2, menu_opt[i]);

}

if(mouse_check_button_pressed(mb_left)){
	
	if(index = 0){
		room_goto(rm_game);
	}else
	if(index = 1){
		room_goto(rm_sett);
	}else
	if(index = 2){
		game_end();
	}

}


