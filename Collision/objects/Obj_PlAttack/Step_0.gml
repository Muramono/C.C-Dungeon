	if((keyboard_check_pressed(ord("A")) and image_xscale>0) and Obj_Player.Pl_Hp > 0){
		image_xscale *= -1;
	}
		if((keyboard_check_pressed(ord("D")) and image_xscale<0) and Obj_Player.Pl_Hp > 0){
		image_xscale *= -1;
	}