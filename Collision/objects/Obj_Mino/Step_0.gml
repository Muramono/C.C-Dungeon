xxSl = 0;
//Mino Death
if(Mino_Hp <= 0)
instance_destroy();
//Mino Animatoins

if(Mino_Attack == false){
	if(image_index == 6)
	image_index = 0;
	
}

//Movement Pattern
//Mino Dash Ram

if(MinoStartX > 5650){ //Checks to see if Minotaur is on the right side
	if(Obj_Player.x >= 6080 and Mino_Attack == false){
		if((Obj_Player.x < x and Obj_Player.x + 850 >= x) and RamCd <= 0){
			if(image_xscale > 0)
				image_xscale *= -1;
			image_speed = 3;
			xxSl = -spdRush;
			StepNum += xxSl
		}
		if((Obj_Player.x > x and Obj_Player.x - 850 <= x) and RamCd <= 0){
			if(image_xscale < 0)
				image_xscale *= -1;
			image_speed = 3;
			xxSl = spdRush;
			StepNum += xxSl;
		}
		if(Obj_Player.x > x-40 and Obj_Player.x < x+40){
			Mino_Attack = true;
			RamCd = 250
			xxSl = 0;
		}
	}
	//Animation Attack
	if(Mino_Attack == true and image_index < 7){
		image_speed = .7;
		image_index = 7;
	}
	if(image_index >= 12){
	Mino_Attack = false;
	image_index = 0; 
	image_speed = 1;
	}
x += xxSl;
if(RamCd > 0)
RamCd -= 1;

//Normal Back And Forth
	if(!CutScene and !Mino_Attack){
		if(WalkBack == false){
		xxSl = -spdSl;
		if(image_xscale > 0)
		image_xscale *= -1;
		x += xxSl;
		StepNum += xxSl;	
		}
		if(StepNum <= 0){
			image_xscale *= -1;
			WalkBack = true;
		}
		if(WalkBack == true){
			xxSl = spdSl;
			if(image_xscale < 0)
			image_xscale *= -1;
			x += xxSl;
			StepNum += xxSl;
		}
		if(StepNum >= 2550){
			image_xscale *= -1;
			WalkBack = false;
		}
	}
}
if(MinoStartX < 3500){
		if(Obj_Player.x <= 3120 and Mino_Attack == false){
		if((Obj_Player.x < x and Obj_Player.x + 850 >= x) and RamCd <= 0){
			if(image_xscale > 0)
				image_xscale = -1;
			image_speed = 3;
			xxSl = -spdRush;
			StepNum -= xxSl
		}
		if((Obj_Player.x > x and Obj_Player.x - 850 <= x) and RamCd <= 0){
			if(image_xscale < 0)
				image_xscale *= -1;
			image_speed = 3;
			xxSl = spdRush;
			StepNum -= xxSl;
		}
		if(Obj_Player.x > x-40 and Obj_Player.x < x+40){
			Mino_Attack = true;
			RamCd = 250
			xxSl = 0;
		}
	}
	//Animation Attack
	if(Mino_Attack == true and image_index < 7){
		image_speed = .7;
		image_index = 7;
	}
	if(image_index >= 12){
	Mino_Attack = false;
	image_index = 0; 
	image_speed = 1;
	}
x += xxSl;
if(RamCd > 0)
RamCd -= 1;

//Normal Back And Forth
	if(!CutScene and !Mino_Attack){
		if(WalkBack == false){
		xxSl = spdSl;
		if(image_xscale < 0)
		image_xscale *= -1;
		x += xxSl;
		StepNum -= xxSl;	
		}
		if(StepNum <= 0){
			image_xscale *= -1;
			WalkBack = true;
		}
		if(WalkBack == true){
			xxSl = -spdSl;
			if(image_xscale > 0)
			image_xscale *= -1;
			x += xxSl;
			StepNum -= xxSl;
		}
		if(StepNum >= 2250){
			image_xscale *= -1;
			WalkBack = false;
		}
	}
}

//Grav and Fall 
yySl=v_speedSl;
v_speedSl += gravSl;
y+=yySl;
//Vertical collisions
if(yySl<0){
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_top) & tile_index_mask;
	if(c1!=0||c2!=0){
		y+=((bbox_top+128)& ~127)-bbox_top;
	}
} 
else {
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_bottom) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		y+=((bbox_bottom & ~127)-1)-bbox_bottom;
		v_speedSl = 0;
	}
}
//Horizontal collisions
if(xxSl<0){
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_bottom) & tile_index_mask;
	var c3=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_top/2) & tile_index_mask;
	if((c1 != 0 or c2 != 0) or c3!=0){
		x+=((bbox_left+128)& ~127)-bbox_left;
	}
}
if(xxSl>0) {
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_bottom) & tile_index_mask;
	var c3=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_top/2) & tile_index_mask;
	if((c1 != 0 or c2 != 0) or c3 != 0){
		x+=((bbox_right & ~127)-1)-bbox_right;

	}
}

//Water Death Collision

//Vertical collisions
if(yySl<0){
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_top) & tile_index_mask;
	if(c1!=0||c2!=0){
		spdSl = 5;
	}
} 
else {
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		spdSl = 5;
	}
}
//Horizontal collisions
if(xxSl<0){
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		spdSl = 5;
	}
}
else {
	var c1=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		spdSl = 5;
	}	
}