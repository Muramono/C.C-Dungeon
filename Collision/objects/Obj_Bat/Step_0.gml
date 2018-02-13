xxSl = 0;
yySl = 0;
//Jump Impluse
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_bottom+1) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_bottom+1) & tile_index_mask;
//Slime Destruction
if(Sl_Hp <= 0)
instance_destroy();
if(Obj_Player.x < x and Obj_Player.x + 550 >= x)
xxSl = -spdSl;
if(Obj_Player.x > x and Obj_Player.x - 550 <= x)
xxSl = spdSl;
if(Obj_Player.x > x-60 and Obj_Player.x < x+60 )
xxSl = 0;
if(Obj_Player.y < y and (Obj_Player.y + 400 >= y ))
yySl = -spdSl;
if(Obj_Player.y > y and (Obj_Player.y - 400 <= y ))
yySl = spdSl;
if(Obj_Player.y > y-32 and Obj_Player.y < y+32)
yySl = 0;
y+=yySl
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
x += xxSl;
if(xxSl<0){
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		x+=((bbox_left+128)& ~127)-bbox_left;
	}
}
else {
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		x+=((bbox_right & ~127)-1)-bbox_right;
	}
}

//Water Death Collision


//Vertical collisions
if(yySl<0){
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_top) & tile_index_mask;
	if(c1!=0||c2!=0){
		y+=((bbox_top+128)& ~127)-bbox_top;		y+=((bbox_top+128)& ~127)-bbox_top;
	}
} 
else {
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		y+=((bbox_bottom & ~127)-1)-bbox_bottom;
	}
}
//Horizontal collisions
if(xxSl<0){
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		x+=((bbox_left+128)& ~127)-bbox_left;
	}
}
else {
	var c1=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		x+=((bbox_right & ~127)-1)-bbox_right;
	}	
}
