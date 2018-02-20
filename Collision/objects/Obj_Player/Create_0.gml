//Ability Booleans
Ab_SpdPot = false;
Ab_Fireball = false;
Ab_Lightning = false;
//Attack Collision Mask
with (instance_create_layer(x,y,"Instances",Obj_PlAttack))
master = other.id
//Player Data
Pl_Hp = 200;
Pl_MaxHp = 200;
//Tile Info
var layr=layer_get_id("Layer_Bound");
tilemap=layer_tilemap_get_id(layr);

var layrS=layer_get_id("Layer_Slow");
tilemapS=layer_tilemap_get_id(layrS);

//Ability Cooldowns
Fb_Cooldown=0;
Lt_Cooldown=0;
//Player Grav/Move Info
spd=10;
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

