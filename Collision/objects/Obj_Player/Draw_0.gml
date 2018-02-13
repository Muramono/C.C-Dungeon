//Draw Death Message
draw_self();
if((image_index >= 22 or image_index <= 30) and Obj_Player.Pl_Hp <= 0){
draw_set_font(Ft_DeathMsg);
draw_set_color(c_white);
draw_text(x-350,y-72,"Better luck next time, press enter to restart");
}