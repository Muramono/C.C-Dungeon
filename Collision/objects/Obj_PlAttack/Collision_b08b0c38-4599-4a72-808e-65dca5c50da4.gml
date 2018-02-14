//Attack Frames
with(Obj_Player){
	if(image_index<=21 and image_index>=12){
			with(Obj_Slime){
			Sl_Hp -= 3
			if(Obj_Player.image_index == 12)
			Obj_Player.XX_K = 0;
				if(Obj_Player.x < x){
					if(Obj_Player.image_index == 17 and Obj_Player.x+64 > x){
					KnockingBack = true;
					}
				}
				if(Obj_Player.x > x){
					if(Obj_Player.image_index == 17 and Obj_Player.x-64 < x)
					KnockingBack = true;
				}
			}
			
	}
}
alarm[0] = 10;