	if((keyboard_check_pressed(ord("A")) and image_xscale>0) and Obj_Player.Pl_Hp > 0){
		image_xscale *= -1;
	}
		if((keyboard_check_pressed(ord("D")) and image_xscale<0) and Obj_Player.Pl_Hp > 0){
		image_xscale *= -1;
	}
	if((image_index >= 0 and image_index <=12) or image_index >= 21 and image_index <= 30){
		mask_index = Spr_PlAttack;
	}
	else
		mask_index = Spr_PlClAttack;