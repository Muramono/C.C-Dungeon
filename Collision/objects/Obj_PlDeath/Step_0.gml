//Stops Death Frame
if(image_index == 8){
	image_speed = 0;
}
//Vertical collisions
if(yy<0){
	var c1=tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) & tile_index_mask;
	if(c1!=0||c2!=0){
		y+=((bbox_top+128)& ~127)-bbox_top;
	}
} 
else {
	var c1=tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) & tile_index_mask;
		if(c1!=0||c2!=0){
			y+=((bbox_bottom & ~127)-1)-bbox_bottom;
			v_speed = 0;
		}
}
//Horizontal collisions
x+=xx;
if(xx<0){
	var c1=tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) & tile_index_mask;
		if(c1!=0||c2!=0){
			x+=((bbox_left+128)& ~127)-bbox_left;
		}
}
else {
	var c1=tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) & tile_index_mask;
		if(c1!=0||c2!=0){
			x+=((bbox_right & ~127)-1)-bbox_right;
		}
}

//Water Death Collision


//Vertical collisions
if(yy<0){
	var c1=tilemap_get_at_pixel(tilemapD,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapD,bbox_right,bbox_top) & tile_index_mask;
	if(c1!=0||c2!=0){
		game_restart();
	}
} 
else {
	var c1=tilemap_get_at_pixel(tilemapD,bbox_left,bbox_bottom) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapD,bbox_right,bbox_bottom) & tile_index_mask;
		if(c1!=0||c2!=0){
			game_restart();
		}
}
//Horizontal collisions
if(xx<0){
	var c1=tilemap_get_at_pixel(tilemapD,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapD,bbox_left,bbox_bottom) & tile_index_mask;
		if(c1!=0||c2!=0){
			game_restart();
		}
}
else {
	var c1=tilemap_get_at_pixel(tilemapD,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapD,bbox_right,bbox_bottom) & tile_index_mask;
			if(c1!=0||c2!=0){
				game_restart();
			}	
}
