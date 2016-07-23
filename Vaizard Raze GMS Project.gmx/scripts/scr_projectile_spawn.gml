///scr_projectile_spawn(X,Y,PROJ_,Team,Damage1,Damage2,Damage3,Facedir,Direction,Color)
var ii;

ii=instance_create(argument0,argument1,get_projectile_instance(argument2));
ii.team=argument3;
ii.damage1=argument4;
ii.damage2=argument5;
ii.damage3=argument6;
ii.facedir=argument7;
ii.dir=argument8;
ii.color=argument9;
ii.proj_type=argument2;


return (ii);