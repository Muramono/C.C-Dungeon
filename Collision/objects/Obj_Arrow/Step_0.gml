
if(yy<0){
	var c1=tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) & tile_index_mask;
	if(c1!=0||c2!=0){
		instance_destroy();
	}
} 
else {
	var c1=tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) & tile_index_mask;
		if(c1!=0||c2!=0){
			instance_destroy();
		}
}
//Horizontal collisions
//x+=xx;
if(xx<0){
	var c1=tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) & tile_index_mask;
		if(c1!=0||c2!=0){
			instance_destroy();
		}
}
else {
	var c1=tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) & tile_index_mask;
			if(c1!=0||c2!=0){
				instance_destroy();
			}	
}