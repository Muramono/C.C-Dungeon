//Attack Frames
with(Obj_Player){
	if(image_index<=21 and image_index>=12){
			with(Obj_Slime){
			Sl_Hp -= 3
			if(Obj_Player.image_index == 12)
			Obj_Player.XX_K = 0;
			if(Obj_Player.image_index == 20)
			Obj_Player.XX_K = Obj_Player.KnockSpeed;
			x+= Obj_Player.XX_K;
			//Add counter for change in x time
			}
	}
}