//Attack Frames
with(Obj_Player){
	if(image_index<=21 and image_index>=12){
			with(Obj_Slime)
			Sl_Hp -= 2
	}
	else {
		if(Pl_Hp > 0)
		Pl_Hp -= 2;
	}
}