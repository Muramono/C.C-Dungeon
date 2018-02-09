draw_self();
if(image_index == 8){
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	var cw = camera_get_view_width(view_camera[0]);

	draw_set_color(c_white);
	draw_set_font(Ft_DeathMsg);
	draw_text(Obj_PlDeath.x,Obj_PlDeath.y-128,"...You have died...Press Enter to restart");
}