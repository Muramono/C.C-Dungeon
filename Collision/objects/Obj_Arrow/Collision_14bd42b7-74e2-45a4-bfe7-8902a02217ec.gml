with(Obj_Player){
	if(image_index < 31){
	Pl_Hp -= 20;
	solid = false;
	with(Obj_Arrow) instance_destroy();
	}
	if(image_index > 31){
	solid = true;
	with(Obj_Arrow){
	move_bounce_solid(false);
	image_xscale *= -1;
	}
	}
}
