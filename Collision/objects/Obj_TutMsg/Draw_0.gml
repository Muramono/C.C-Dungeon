draw_set_font(Ft_Normal);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(1100,909,"Hello and welcome to \"THE PLATFORMER\".\nTry moving around. \n W or Space = Jump \n A = Left \n D = Right");
draw_text(3264,1050, "Now lets teach you how to defend yourself.\nLeft click = melee attack\nRight click = block projectiles \nLet's try it on that slime over there.");
draw_text(4808,1076, "Check out your health in the top left corner, looks like you lost some.\nTry picking up that heart over there to get it back.");
draw_text(6351+300,808-50, "Hey look up there its a spell tome\nmaybe if you pick it up you could learn a spell");
if(Obj_Player.Ab_Fireball == true)
draw_text(8350,816, "You gained a new spell press Q to try it out. It will\nonly work every 5 seconds but it will deal high damage.");
draw_text(9545,1188, "Congrats you know how to survive\nnow to the real part of the game");
