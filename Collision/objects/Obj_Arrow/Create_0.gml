//Create Event (Fireball)
if(Obj_Skele.Right == false){
image_xscale = 1;
direction = 360
speed = -25;
}
if(Obj_Skele.Right == true){
image_xscale = -1;
direction = 180;
speed = 25;
}
image_angle = direction;
//Tilemap-Layer Information Pull
var layr=layer_get_id("Layer_Bound");
tilemap=layer_tilemap_get_id(layr);
sprMask=Spr_Arrow;
xx=0;
yy=0;
//Fireball Collision Mask/Var Dec
spr_bbox_top=sprite_get_bbox_top(sprMask)-sprite_get_yoffset(sprMask);
spr_bbox_bottom=sprite_get_bbox_bottom(sprMask)-sprite_get_yoffset(sprMask);
spr_bbox_left=sprite_get_bbox_left(sprMask)-sprite_get_xoffset(sprMask);
spr_bbox_right=sprite_get_bbox_right(sprMask)-sprite_get_xoffset(sprMask);