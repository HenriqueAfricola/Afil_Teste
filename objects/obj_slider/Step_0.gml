if(mouse_check_button(mb_left) && instance_position(mouse_x,mouse_y,all) = id){

 slr_clicked = true;

}

	if(slr_clicked = true){
		
		
		if(slr_barx >= slr_bar_posx && slr_barx <= slr_bar_posx + slr_circle_width){
			slr_barx = mouse_x;
		}
		
		if(slr_barx < slr_bar_posx){
			slr_barx = slr_bar_posx;
		}
		
		if(slr_barx > slr_bar_posx + slr_circle_width){
			slr_barx = slr_bar_posx + slr_circle_width;
		}
		
		
	}


if(mouse_check_button_released(mb_left)){
	slr_clicked = false;
}

slr_percentage = (slr_barx - slr_bar_posx) / slr_circle_width;
x = slr_barx;



