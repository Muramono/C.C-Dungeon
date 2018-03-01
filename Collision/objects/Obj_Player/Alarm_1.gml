//Camera Switch Back To Player
with(Obj_MinoMsg) instance_destroy();
Obj_Mino.CutScene = false;
camera_set_view_target(view_camera[0], Obj_Player);
image_speed = 1;
Freeze = false;