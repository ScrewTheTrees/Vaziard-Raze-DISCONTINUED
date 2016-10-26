
while (!instance_exists(obj_entrance_stage))
{

inum=irandom_range(0,instance_number(obj_solid_ground)-1);


with (instance_find(obj_solid_ground,inum))
{
    if !collision_rectangle(x-96,y-96,x+96,y-288,obj_solidparent,false,false)
    && x<1500
    && x>192
    
    {
        ii=instance_create(x+48,y-192,obj_entrance_stage);
        ii.eid=1;
    }
}


}//While