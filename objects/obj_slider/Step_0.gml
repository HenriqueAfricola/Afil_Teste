if(mouse_check_button(mb_left) && instance_position(mouse_x,mouse_y,all) = id){

 Var_Slider_Clicked = true;

}

	if(Var_Slider_Clicked = true){
		
		
		if(Var_Slider_Bar_X >= Var_Slider_Bar_Position_X && Var_Slider_Bar_X <= Var_Slider_Bar_Position_X + Var_Slider_Bar_Box_Width){
			Var_Slider_Bar_X = mouse_x;
		}
		
		if(Var_Slider_Bar_X < Var_Slider_Bar_Position_X){
			Var_Slider_Bar_X = Var_Slider_Bar_Position_X;
		}
		
		if(Var_Slider_Bar_X > Var_Slider_Bar_Position_X + Var_Slider_Bar_Box_Width){
			Var_Slider_Bar_X = Var_Slider_Bar_Position_X + Var_Slider_Bar_Box_Width;
		}
		
		
	}


if(mouse_check_button_released(mb_left)){
	Var_Slider_Clicke = false;
}

slr_percentage = (Var_Slider_Bar_X - Var_Slider_Bar_Position_X) / Var_Slider_Bar_Box_Width;
x = Var_Slider_Bar_X;



