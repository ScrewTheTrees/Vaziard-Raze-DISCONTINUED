
platforms=irandom_range(35,55);

while (platforms>0)
{
    platx=round(irandom_range(192,room_width-192)/96)*96;
    platy=round(irandom_range(192,room_height-192)/96)*96;
    
    plath=irandom_range(3,8)*96;
    
    if scr_platform_possible(platx,platy,platx+plath,platy)==true
    {   
        scr_debug_generator_add(4,platx+48,platy+48)
        scr_debug_generator_add(11,platx+plath+48,platy+48)
        
        for (xx=platx; xx<=(platx+plath);xx+=96)
        {
            scr_place_solid_block(xx,platy);
        }
        platforms-=1;
    }
    
}//While platforms


scr_debug_generator_add(10,startx+48,starty+48);//End debug drawing for this section