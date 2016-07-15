debuggrid=mp_grid_create(0,0,round(room_width/96)*96,round(room_height/192)*192,96,192);
with (obj_solidparent)
{
mp_grid_add_cell(debuggrid,round(x/96),round(y/192));
}
