#define Resolution_Handler


#define resolution_create
fsold=global.fullscreen;
width_old=global.gamewidth;
height_old=global.gameheight;

#define resolution_update

if global.fullscreen!=fsold 
    {
    window_set_fullscreen(global.fullscreen);
    }

if (global.gamewidth!=width_old || global.gameheight!=height_old)
    {
    
    window_set_size(global.gamewidth,global.gameheight);
    
    window_set_position(16,16);
    }

fsold=global.fullscreen;
width_old=global.gamewidth;
height_old=global.gameheight;