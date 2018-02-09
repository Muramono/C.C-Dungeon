camera_set_view_target(view_camera[0],Obj_PlWalk);
//Tile Info
var layr=layer_get_id("Layer_Bound");
tilemap=layer_tilemap_get_id(layr);

var layrD=layer_get_id("Layer_Death");
tilemapD=layer_tilemap_get_id(layrD);

cooldown=0;
//Player Grav/Move Info
spd=15;
xx=0;
yy=0;
sprMask=Spr_Player;
JumpCooldown = 0;
v_speed = 0;
jump_impluse=26;
grav = 1.3; //(Idea) Changing grav while slashing 'Slash Jump'
//Bbox Variable Dec
spr_bbox_top=sprite_get_bbox_top(sprMask)-sprite_get_yoffset(sprMask);
spr_bbox_bottom=sprite_get_bbox_bottom(sprMask)-sprite_get_yoffset(sprMask);
spr_bbox_left=sprite_get_bbox_left(sprMask)-sprite_get_xoffset(sprMask);
spr_bbox_right=sprite_get_bbox_right(sprMask)-sprite_get_xoffset(sprMask);

