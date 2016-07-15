

global.generator=object_index;

//Run check several times
repeat(10)
{
    with (obj_solid_block)
    {
        if place_meeting(x,y+192,obj_solid_block)
        {
            if scr_place_solid_block(x,y+96)==true
                scr_debug_generator_add(5,x+48,y+144);
        }
    
        //Fill Gaps that dont really go anywhere anyway
        if place_meeting(x+192,y,obj_solid_block)
        && place_meeting(x+96,y-96,obj_solid_block)
        {
            if scr_place_solid_block(x+96,y)==true
                scr_debug_generator_add(5,x+144,y+48);
        }
    
    
   
    }
}
