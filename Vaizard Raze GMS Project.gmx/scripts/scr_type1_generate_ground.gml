
min_height=(room_height/2)+192
max_height=room_height-192;

startx=(-768);
starty=round(irandom_range(min_height,max_height)/96)*96;

endx=0;
endy=0;

finalx=room_width+768; //Final X we want to reach


//first loop
while (startx<finalx)
    {      
    
    
    if startx<1000 module=MODULE_FLAT //Start should always have some kind of ground
    else module=choose(MODULE_FLAT,MODULE_FLAT,MODULE_FLAT,MODULE_STAIR,MODULE_STAIR,MODULE_EMPTY);
    
        switch(module)
        {
        case MODULE_FLAT:
        scr_type1_ground_module_flat();
        break;
        case MODULE_EMPTY:
        scr_type1_ground_module_empty();
        break;
        case MODULE_STAIR:
        scr_type1_ground_module_stair();
        break;
        }//Switch module
    
    lastgroundmodule=module;
    startx+=96;
        
    }//Startx<finalX
    
    
scr_debug_generator_add(10,startx,starty);//End debug drawing for this section
