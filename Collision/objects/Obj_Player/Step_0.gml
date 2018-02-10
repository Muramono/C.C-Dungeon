//Animation Changing
if(!keyboard_check(ord("A")) or !keyboard_check(ord("D"))){
		if(image_index == 3){
			image_index = 0;	
		}
	}
//Fireball Creation (Step Pl)
if (keyboard_check(ord("Q")) && cooldown<1)
{
	//show_message(string(point_direction(x,y,mouse_x,mouse_y)));
	if(image_xscale>0)
	instance_create_layer(x,y-64,"La_Fireball",Obj_Fireball)
	if(image_xscale<0)
	instance_create_layer(x,y+64,"La_Fireball",Obj_Fireball)
	cooldown = 60;
}
cooldown -= 1;
//Finding boundary boxs
	var c1=tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom+1) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom+1) & tile_index_mask;
//Movement Animation Obj Switch
//Walking Switch
	if(keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D"))) 
	image_index = 4;
	if( image_index == 11)
	image_index = 4;
	if(keyboard_check_released(ord("A")) or keyboard_check_released(ord("D")))
	image_index = 0;
//Slashing Switch
	if(mouse_check_button_pressed(mb_left))
	image_index = 12;
	if(image_index == 21)
	image_index = 12;
	if(mouse_check_button_released(mb_left))
	image_index = 0;
//Keyboard check and movement input
	if(c1!=0||c2!=0){
		if(keyboard_check(ord("W"))){
		v_speed = -jump_impluse;
		}
	}
	if(keyboard_check_pressed(ord("A"))&&image_xscale>0){
		image_xscale *= -1;
	}
		if(keyboard_check_pressed(ord("D"))&& image_xscale<0){
		image_xscale *= -1;
	}
yy=v_speed;
xx=spd*(keyboard_check(ord("D"))-keyboard_check(ord("A")));
v_speed += grav;
y+=yy;
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
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_top) & tile_index_mask;
	if(c1!=0||c2!=0){
		spd = 5;
	}
} 
else {
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		spd = 5;
	}
}
//Horizontal collisions
if(xx<0){
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		spd = 5;
	}
}
else {
	var c1=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		spd = 5;
	}	
}
