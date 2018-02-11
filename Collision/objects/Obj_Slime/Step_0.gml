//Slime Destruction
if(Sl_Hp <= 0)
instance_destroy();
yySl=v_speedSl;
//xxSl=spdSl*(keyboard_check(ord("D"))-keyboard_check(ord("A")));
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
x+=xxSl;
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
