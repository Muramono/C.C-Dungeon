draw_healthbar(32,32,384,64,PercHel,c_black,c_red,c_lime,0,true,true);
if(Ab_Fireball == true){
	draw_healthbar(500,32,650,64,Perc_AbFr,c_black,c_white,c_white,0,true,true);
	draw_set_font(Ft_Ab);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(574,52,"Q",c_black,c_black,c_black,c_black,1);
}
if(Ab_Lightning == true){
		draw_healthbar(680,32,820,64,Perc_AbLt,c_black,c_white,c_white,0,true,true);
		draw_set_font(Ft_Ab);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_color(752,52,"E",c_black,c_black,c_black,c_black,1);
}
//Death Message
if((image_index >= 22 or image_index <= 30) and Obj_Player.Pl_Hp <= 0){
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Ft_DeathMsg);
draw_set_color(c_white);
draw_text_color(922,422,"Better luck next time,\npress enter to restart",c_red,c_red,c_red,c_red,1);
}