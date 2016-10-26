///msg_send_enemy_create()


var dd;

clearbuffer(0)
writebyte(MSG_ENTITY_CREATE,0)
writeint(object_index,0);
writeint(entityid,0);
writebyte(team,0)
writeint(x,0);
writeint(y,0);



if global.playerid=0
    scr_send_client(SEND_ROOM,global.myroom)

clearbuffer(0);
