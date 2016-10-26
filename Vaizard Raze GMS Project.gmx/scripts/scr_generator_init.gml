lastgroundmodule=-1;
mystep=0;
done=false;

debuggrid=mp_grid_create(1,1,1,1,1,1);

global.generator=object_index;

exitpath=path_add();


obj_player.hasmap=false;
obj_player.ready=true;

obj_playerparent.mapsent=false;
