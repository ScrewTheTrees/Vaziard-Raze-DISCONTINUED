///scr_platform_possible(x1,y1,x2,y2);
//Returns true of the platform is allowed at this location.


if collision_rectangle(argument0-96,argument1-288,argument2+190,argument3+280,obj_solid_ceiling,false,false)
or collision_rectangle(argument0-96,argument1-288,argument2+190,argument3+280,obj_solid_ground,false,false)
or collision_rectangle(argument0-96,argument1-288,argument2+190,argument3+280,obj_solid_slope_l,false,false)
or collision_rectangle(argument0-96,argument1-288,argument2+190,argument3+280,obj_solid_slope_r,false,false)
//No Ground is not allowed on top of platform, and no celing blocks allowed below it
or collision_rectangle(argument0,argument1,argument2,-100,obj_solid_ground,false,false)
or collision_rectangle(argument0,argument1,argument2,room_height+100,obj_solid_ceiling,false,false)
{
    return (false);
}






return (true);
