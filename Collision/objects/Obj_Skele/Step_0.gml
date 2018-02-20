//Image Reset
if(image_index == 5)
image_index = 0;
xxSl = 0;
//Knocking Back
if(KnockingBack == true){
if(Obj_Player.x < x)
x += KnockSpeed;
if(Obj_Player.x > x)
x -= KnockSpeed;
}
//Jump Impluse
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_bottom+1) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_bottom+1) & tile_index_mask;
if(c1!=0||c2!=0){
	if(Obj_Player.y < (y-32) and Obj_Player.y + 400 >= y){
		v_speedSl = -jump_impluseSl;
	}
}
//Skele Destruction
if(Sl_Hp <= 0)
instance_destroy();
yySl=v_speedSl;
v_speedSl += gravSl;
y+=yySl;
if(Obj_Player.x < x and Obj_Player.x + 650 >= x){
if((Obj_Player.x < x and Obj_Player.x + 650 >= x) and Obj_Player.x + 400 <= x )
xxSl = -spdSl;
//Sprite Flipping
if(image_xscale < 0)
image_xscale *= -1;
//Arrow Stance Change
	if((Obj_Player.x + 400 >= x and image_index < 6) and (Obj_Player.y + 10 >= y and Obj_Player.y - 10 <= y)){
		xxSl = 0;
		image_speed = .1;
		image_index = 6;
	}
		if(image_index == 8){
		instance_create_layer(x-65,y,"La_Arrow",Obj_Arrow);	
		Obj_Arrow.image_yscale *= -1;
		image_speed = 1;
		image_index = 0;
		}
}
if(Obj_Player.x > x and Obj_Player.x - 650 <= x){
if((Obj_Player.x > x and Obj_Player.x - 650 <= x) and Obj_Player.x - 400 >= x )
xxSl = spdSl;
//Sprite Flipping
if(image_xscale > 0)
image_xscale *= -1;
//Arrow Stance Change
	if(Obj_Player.x - 400 <= x and image_index < 6 and (Obj_Player.y + 10 >= y and Obj_Player.y - 10 <= y)){
		xxSl = 0;
		image_speed = .1;
		image_index = 6;
	}
	if(image_index == 8){
	instance_create_layer(x+65,y,"La_Arrow",Obj_Arrow);		
	image_speed = 1;
	image_index = 0;
	}
}
if(Obj_Player.x > x-40 and Obj_Player.x < x+40 ){
xxSl = 0;
}
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
