///scr_place_ceiling_block(X,Y)

if !collision_rectangle(argument0,argument1,argument0+8,argument1+8,obj_solid_ceiling,false,false)
instance_create(argument0,argument1,obj_solid_ceiling);
