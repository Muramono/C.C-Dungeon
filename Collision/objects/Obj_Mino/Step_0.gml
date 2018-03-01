xxSl = 0;
//Movement Pattern
//Mino Dash Ram
	if((Obj_Player.x < x and Obj_Player.x + 850 >= x) and RamCd <= 0){
		if(image_xscale > 0)
		image_xscale *= -1;
		image_speed = 3;
		xxSl = -spdRush;
	}
	if((Obj_Player.x > x and Obj_Player.x - 850 <= x) and RamCd <= 0){
		if(image_xscale < 0)
		image_xscale *= -1;
		image_speed = 3;
		xxSl = spdRush;
	}
	if(Obj_Player.x > x-40 and Obj_Player.x < x+40){
		RamCd = 250
		image_index = 0;
		image_speed = 0;
		xxSl = 0;
	}
x += xxSl;
if(RamCd > 0)
RamCd -= 1;
//Normal Back And Forth
if(inst_6626E155){
	if(x > 6080 and CutScene == false){
	xxSl = -spdSl;
	x += xxSl;
	}
}

//Rush Movement
if(Obj_Player.x < x and Obj_Player.x + 650 >= x){ 
	alarm[0] = 50;
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
		KnockingBack = false;
		xxSl = 0;
	}
}
if(xxSl>0) {
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_bottom) & tile_index_mask;
	var c3=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_top/2) & tile_index_mask;
	if((c1 != 0 or c2 != 0) or c3 != 0){
		x+=((bbox_right & ~127)-1)-bbox_right;
		KnockingBack = false;
		xxSl = 0;
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
