if(keyboard_check(ord("R"))){
room_goto(0);
}
//Variable Reference
with(Obj_AbTrack){ 
if(Ab_FireballRef == true)
Obj_Player.Ab_Fireball = true;
}
with(Obj_AbTrack){
if(Ab_LightningRef == true)
Obj_Player.Ab_Lightning = true;
}
//Bar Var's
PercHel = (Pl_Hp / Pl_MaxHp ) * 100;
Perc_AbFr = (1-(Fb_Cooldown / Fb_CdMax)) * 100;
Perc_AbLt = (1-(Lt_Cooldown / Lt_CdMax)) * 100;
//Animation Changing
if(!keyboard_check(ord("A")) or !keyboard_check(ord("D"))){
		if(image_index == 3){
			image_index = 0;	
		}
	}
//Lightning Calldown
if ((keyboard_check(ord("E")) and Lt_Cooldown<1) and Ab_Lightning == true){
	instance_create_layer(mouse_x,y-220,"La_Fireball",Obj_Lightning);
	Lt_Cooldown = 520;
}
//Fireball Creation (Step Pl)
if ((keyboard_check(ord("Q")) and Fb_Cooldown<1) and Ab_Fireball == true)
{
	if(image_xscale>0)
	instance_create_layer(x,y-64,"La_Fireball",Obj_Fireball)
	if(image_xscale<0)
	instance_create_layer(x,y+64,"La_Fireball",Obj_Fireball)
	Fb_Cooldown = 520;
}
Fb_Cooldown -= 1;
Lt_Cooldown -= 1;
//Finding boundary boxs
	var c1=tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom+1) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom+1) & tile_index_mask;
	//Checking Top/Bottom boundaries for water blocks
	var cw1 = tilemap_get_at_pixel(tilemapS,bbox_left,bbox_top) & tile_index_mask;
	var cw2 = tilemap_get_at_pixel(tilemapS,bbox_right,bbox_top) & tile_index_mask;
	var cw3 = tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	var cw4 = tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
//Movement Animation Obj Switch
//Death Switch
if(Pl_Hp <= 0){
	if(image_index != 22 and image_index < 22)
	image_index = 22;
	if(image_index == 30) 	
	image_speed = 0;
	//Death Restart
	if(keyboard_check(vk_enter))
	game_restart();	
}
//Walking Switch
	if((keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D"))) and Pl_Hp > 0) 
	image_index = 4;
	if( image_index == 11)
	image_index = 4;
	if(((keyboard_check_released(ord("A")) or keyboard_check_released(ord("D"))) and Pl_Hp > 0) and !(keyboard_check(ord("A")) or keyboard_check(ord("D"))))
	image_index = 0;
//Slashing Switch
	if(((mouse_check_button_pressed(mb_left)) and Pl_Hp > 0) and (image_index < 12 or image_index > 21))
	image_index = 12;
	if(image_index == 21){
	image_index = 0;
	}
//Blocking Switch
	if((mouse_check_button_pressed(mb_right)) and Pl_Hp > 0)
	image_index = 31;
	if(image_index == 37)
	image_index = 0; 
//Keyboard check and movement input
		if(((c1!=0||c2!=0) or ((cw1!=0 or cw2!=0) or (cw3!=0 or cw4!=0))) and Pl_Hp > 0){
			if(keyboard_check(ord("W")) or keyboard_check(vk_space)){
			v_speed = -jump_impluse;
			}
		}
	if((keyboard_check_pressed(ord("A")) and image_xscale>0) and Pl_Hp > 0){
		image_xscale *= -1;
	}
		if((keyboard_check_pressed(ord("D")) and image_xscale<0) and Pl_Hp > 0){
		image_xscale *= -1;
	}
yy=v_speed;
xx=spd*(keyboard_check(ord("D"))-keyboard_check(ord("A")));
if(Pl_Hp <= 0)
xx = 0;
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
		grav = .1;
		spd = 5;
		jump_impluse = 4;
	}
	if(c1==0 and c2==0){
		grav = 1.3;
		if(Ab_SpdPot == false)
		spd = 10;
		jump_impluse = 26;
	}
} 
else {
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		grav = .1;
		spd = 5;
		jump_impluse = 4;
	}
	if(c1==0 and c2==0){
		grav = 1.3
		if(Ab_SpdPot == false)
		spd = 10;
		jump_impluse = 26;
	}
}
//Horizontal collisions
if(xx<0){
	var c1=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_left,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		grav = .1;
		spd = 5;
		jump_impluse = 4;
	}
	if(c1==0 and c2==0){
		grav = 1.3;
		if(Ab_SpdPot == false)
		spd = 10;
		jump_impluse = 26;
	}
}
else {
	var c1=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_top) & tile_index_mask;
	var c2=tilemap_get_at_pixel(tilemapS,bbox_right,bbox_bottom) & tile_index_mask;
	if(c1!=0||c2!=0){
		grav = .1;
		jump_impluse = 4;
		spd = 5;
	}	
	if(c1==0 and c2==0){
		grav = 1.3;
		if(Ab_SpdPot == false)
		spd = 10;
		jump_impluse = 26;
	}
}
