///scr_type1_ceiling_module_flat()
//All the vars you need is in scr_type1_generate_ceiling

padding=768;

nexty=0;
nextx=0;



nexty=irandom_range(-8,8)*96; //Choose new blcok
        while(nexty+starty<min_height || nexty+starty>max_height
        || (nexty>=-2*96 && nexty<=2*96))
        {
        nexty=irandom_range(-8,8)*96; //Choose new blcok
        }//While
    
    if nexty<0  nextx=nexty-(nexty*2)
    else nextx=nexty;
    
    endy=starty+nexty; //Set up endY as starty (they are on the same plane)
    endx=startx+nextx; //Set up endX
    
    blocky=starty;
    blocky2=endy;
    
    
    scr_debug_generator_add(3,startx+48,starty+48)
    scr_debug_generator_add(0,endx+48,endy+48)
    
    
        while (blocky< room_height+padding)
        {
        scr_place_ground_block(startx,blocky);
        scr_place_ground_block(endx,blocky2);
        blocky+=96;
        blocky2+=96;
        }//Side blocks
    
        if (nexty>0)
        {
            //Down
            while (startx<endx)
            {
            scr_place_ground_block(startx,starty);
            scr_place_solid_slope_l(startx+96,starty);
            startx+=96;
            starty+=96
        
            }
        }
        
        if (nexty<0)
        {
            //Down
            while (startx<endx)
            {
            scr_place_ground_block(startx,starty);
            scr_place_solid_slope_r(startx,starty-96);
            startx+=96;
            starty-=96
            }
        }
    
    
    
