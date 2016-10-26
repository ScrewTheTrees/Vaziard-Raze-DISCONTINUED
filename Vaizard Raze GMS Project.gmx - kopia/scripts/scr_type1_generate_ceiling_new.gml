
min_height=(room_height/2)-192
max_height=96;

startx=(-768);
starty=round(irandom_range(0,min_height)/96)*96;

endx=0;
endy=0;

finalx=room_width+768; //Final X we want to reach


//first loop
while (startx<finalx)
    {      
    
    
    
    module=choose(MODULE_FLAT,MODULE_FLAT,MODULE_FLAT,MODULE_EMPTY);
    
        switch(module)
        {
        case MODULE_FLAT:
        scr_type1_ceiling_module_flat(startx,starty,endx,endy);
        break;
        case MODULE_EMPTY:
        scr_type1_ceiling_module_empty(startx,starty,endx,endy);
        break;
        }//Switch module
    
    
    startx+=96;
        
    }//Startx<finalX
