//Local Var
var L_Hp = Sl_Hp
xxSl = 0;
yySl = 0;
//Knocking Back 
if(KnockingBack == true){
	if(Obj_Player.x < x){
		xxSl = KnockSpeed;
		x += xxSl;
	}
	if(Obj_Player.x > x){
		xxSl = -KnockSpeed
		x += xxSl;
	}
}
//Jump Impluse
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_bottom+1) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_bottom+1) & tile_index_mask;
//Slime Destruction
if(L_Hp <= 0)
instance_destroy();
if(KnockingBack == false){
	if(Obj_Player.x < x and Obj_Player.x + 650 >= x){
		xxSl = -spdSl;
		if(image_xscale < 0)
			image_xscale *= -1;
		if(collision_point(x,y,Obj_Player,true,true))
			xxSl = 0;
	}
	if(Obj_Player.x > x and Obj_Player.x - 650 <= x){
		xxSl = spdSl;
		if(image_xscale > 0)
			image_xscale *= -1;
		if(collision_point(x,y,Obj_Player,true,true))
			xxSl = 0;
	}
}
if(KnockingBack == false){
	if(Obj_Player.x > x-60 and Obj_Player.x < x+60 )
	xxSl = 0;
	if(Obj_Player.y < y and (Obj_Player.y + 400 >= y ))
	yySl = -spdSl;
	if(Obj_Player.y > y and (Obj_Player.y - 400 <= y ))
	yySl = spdSl;
	if(Obj_Player.y > y-32 and Obj_Player.y < y+32)
	yySl = 0;
}
if(KnockingBack == false)
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
if(KnockingBack == false)
x += xxSl;
if(xxSl<0){
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_bottom) & tile_index_mask;
	//var c3=tilemap_get_at_pixel(tilemapSl,bbox_left,bbox_top/2) & tile_index_mask;
	if((c1 != 0 or c2 != 0)){// or c3!=0){
		x+=((bbox_left+128)& ~127)-bbox_left;
		KnockingBack = false;
		xxSl = 0;
		yySl = 0;
		x += 2;
	}
}
if(xxSl>0) {
	var c1=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_bottom) & tile_index_mask;
	//var c3=tilemap_get_at_pixel(tilemapSl,bbox_right,bbox_top/2) & tile_index_mask;
	if((c1 != 0 or c2 != 0)){// or c3!=0){
		x+=((bbox_right & ~127)-1)-bbox_right;
		KnockingBack = false
		xxSl = 0;
		yySl = 0;
		x -= 2;
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
