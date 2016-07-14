///scr_debuggrid_path_possible(x1,y1,x2,y2)
//Returns true when pathing between those 2 points is possible

temppath=path_add();

ret=(mp_grid_path(debuggrid,temppath,argument0,argument1,argument2,argument3,false));


path_delete(temppath);

return(ret);
