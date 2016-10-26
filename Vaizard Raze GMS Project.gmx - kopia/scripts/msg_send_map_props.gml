
//MUST BE CALLED BY OBJ_OTHERPLAYER

clearbuffer(0)
writebyte(MSG_MAP_PROPS,0);
writeint(obj_entrance_stage.x,0);
writeint(obj_entrance_stage.y,0);
writeint(obj_exit_stage.x,0);
writeint(obj_exit_stage.y,0);


scr_send_client(SEND_INMISSION,0)

clearbuffer(0);
