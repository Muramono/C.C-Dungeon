
//Tile Info
var layr=layer_get_id("Layer_Bound");
tilemapSl=layer_tilemap_get_id(layr);

var layrS=layer_get_id("Layer_Slow");
tilemapS=layer_tilemap_get_id(layrS);
//Player Grav/Move Info
spdSl=15;
xxSl=0;
yySl=0;
sprMaskSl=Spr_Slime;
v_speedSl = 0;
gravSl = 1.3;
spr_bbox_top=sprite_get_bbox_top(sprMaskSl)-sprite_get_yoffset(sprMaskSl);
spr_bbox_bottom=sprite_get_bbox_bottom(sprMaskSl)-sprite_get_yoffset(sprMaskSl);
spr_bbox_left=sprite_get_bbox_left(sprMaskSl)-sprite_get_xoffset(sprMaskSl);
spr_bbox_right=sprite_get_bbox_right(sprMaskSl)-sprite_get_xoffset(sprMaskSl);
