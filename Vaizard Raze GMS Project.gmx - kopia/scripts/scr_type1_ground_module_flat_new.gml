///scr_type1_ceiling_module_flat()
//All the vars you need is in scr_type1_generate_ceiling

padding=768;



//remeber that the 

nexty=irandom_range(-6,7)*96; //Choose new blcok
        while(nexty+starty<min_height || nexty+starty>max_height)
        {
        nexty=irandom_range(-4,7)*96; //Choose new blcok
        }//While
    
    nextx=irandom_range(5,13)*96; //Choose new blcok
    
    //These 3 sets the endX/EndY
    starty=starty+nexty;
    endy=starty; //Set up endY as starty (they are on the same plane)
    endx=startx+nextx; //Set up endX
    
    blocky=starty;
    
    
    scr_debug_generator_add(2,startx,starty)
    scr_debug_generator_add(0,endx,endy)
    
    
        while (blocky< room_height+padding)
        {
        scr_place_ground_block(startx,blocky);
        scr_place_ground_block(endx,blocky);
        blocky+=96;
        }//Side blocks
    
        while (startx<endx)
        {
        scr_place_ground_block(startx,starty);
        startx+=96;
        
        }
    
    
    
    
    