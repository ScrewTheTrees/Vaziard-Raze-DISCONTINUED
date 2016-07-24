
blocks=readint(0);
for (ii=0;ii<=blocks;ii+=1)
{
    xx=readint(0);
    yy=readint(0);
    
    scr_place_solid_block(xx,yy);
}

blocks=readint(0);
for (ii=0;ii<=blocks;ii+=1)
{
    xx=readint(0);
    yy=readint(0);
    
    scr_place_ceiling_block(xx,yy);
}

blocks=readint(0);
for (ii=0;ii<=blocks;ii+=1)
{
    xx=readint(0);
    yy=readint(0);
    
    scr_place_ground_block(xx,yy);
}

blocks=readint(0);
for (ii=0;ii<=blocks;ii+=1)
{
    xx=readint(0);
    yy=readint(0);
    
    scr_place_solid_sidewall(xx,yy);
}

blocks=readint(0);
for (ii=0;ii<=blocks;ii+=1)
{
    xx=readint(0);
    yy=readint(0);
    
    scr_place_solid_slope_l(xx,yy);
}

blocks=readint(0);
for (ii=0;ii<=blocks;ii+=1)
{
    xx=readint(0);
    yy=readint(0);
    
    scr_place_solid_slope_r(xx,yy);
}



clearbuffer(0);

