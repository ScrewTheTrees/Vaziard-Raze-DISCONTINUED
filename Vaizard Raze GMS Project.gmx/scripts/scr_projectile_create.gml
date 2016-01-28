///scr_projectile_create(X,Y,Instance,Team,Damage1,Damage2,Damage3,Facedir,Direction)

ii=instance_create(argument0,argument1,argument2);
ii.team=argument3;
ii.damage1=argument4;
ii.damage2=argument5;
ii.damage3=argument6;
ii.facedir=argument7;
ii.dir=argument8;

return (ii);
