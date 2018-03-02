if(instance_exists(Obj_Mino)){
with(Obj_Player){
	if(image_index < 31){
	Pl_Hp -= 35;
	solid = false;
	with(Obj_TrapArrow) instance_destroy();
	}
	if(image_index > 31){
	solid = true;
		with(Obj_TrapArrow){
		Obj_Mino.MinoDmg = true;
		move_bounce_solid(false);
		image_xscale *= -1;
		}
	}
}
}
