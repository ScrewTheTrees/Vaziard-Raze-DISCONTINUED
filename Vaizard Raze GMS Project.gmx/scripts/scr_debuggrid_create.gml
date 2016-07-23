scr_debuggrid_destroy(); //Clean up temp grid

global.gridholder=object_index;

debuggrid=mp_grid_create(0,0,(round(room_width/96)),round(room_height/192),96,192);
with (obj_solidparent)
{
mp_grid_add_cell(global.gridholder.debuggrid,floor(x/96),floor(y/192));
}