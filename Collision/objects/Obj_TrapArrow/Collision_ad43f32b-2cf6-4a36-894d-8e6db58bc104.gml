if(object_exists(Obj_Mino)){
if(other.MinoDmg == true){
other.Mino_Hp -= 30;
Obj_Mino.MinoDmg = false;
instance_destroy();
}
}
