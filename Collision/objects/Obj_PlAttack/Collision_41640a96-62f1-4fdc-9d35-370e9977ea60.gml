//Attack Frames
	if(Obj_Player.image_index<=21 and Obj_Player.image_index>=12){
		with(other) Sl_Hp -= 3
				if(Obj_Player.x < Obj_Skele.x){
					if(Obj_Player.image_index == 17 and Obj_Player.x+64 > x){
					other.KnockingBack = true;
					}
				}
				if(Obj_Player.x > Obj_Skele.x){
					if(Obj_Player.image_index == 17 and Obj_Player.x-64 < x)
					other.KnockingBack = true;
				}
	}
alarm[0] = 10;