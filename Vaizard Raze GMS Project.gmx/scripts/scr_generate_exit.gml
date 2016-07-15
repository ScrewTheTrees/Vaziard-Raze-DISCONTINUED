
global.generator=object_index;

while (!instance_exists(obj_exit_stage))
{

inum=irandom_range(0,instance_number(obj_solidparent)-1);


with (instance_find(obj_solidparent,inum))
{
    if object_index==obj_solid_block
    || object_index==obj_solid_ground
        {
        if !collision_rectangle(x-96,y-96,x+96,y-288,obj_solidparent,false,false)
        && x<room_width-192
        && x>room_width-3000
        {
                instance_create(x,y-192,obj_exit_stage);
                mp_grid_path(global.generator.debuggrid,global.generator.exitpath,obj_entrance_stage.x,obj_entrance_stage.y,obj_exit_stage.x,obj_exit_stage.y,true)
                
                //if path_get_number(global.generator.exitpath)<5
                //    with (obj_exit_stage) instance_destroy();
        }
    }
}


}//While
