
platforms=irandom_range(20,35);

while (platforms>0)
{
    platx=round(irandom_range(192,room_width-192)/96)*96;
    platy=round(irandom_range(192,room_height-192)/96)*96;
    
    platv=irandom_range(3,6)*96;
    
    if scr_platform_possible(platx,platy,platx,platy+platv)==true
    {   
        scr_debug_generator_add(4,platx+48,platy+48)
        scr_debug_generator_add(11,platx+48,platy+platv+48)
        
        for (yy=platy; yy<=(platy+platv);yy+=96)
        {
            scr_place_solid_block(platx,yy);
        }
        platforms-=1;
    }
    
}//While platforms


scr_debug_generator_add(10,startx,starty);//End debug drawing for this section
