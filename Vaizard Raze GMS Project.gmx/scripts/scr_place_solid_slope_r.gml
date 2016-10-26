///scr_place_solid_slope_r(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,obj_solid_slope_r,false,false)
{
instance_create(argument0,argument1,obj_solid_slope_r);
return true;
}

return false;
