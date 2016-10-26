///msg_send_enemy_create()


var dd;

clearbuffer(0)
writebyte(MSG_ENEMY_CREATE,0)
writeshort(entitytype,0);
writeint(entityid);
writebyte(team,0)

writeint(entity_max_hp,0);
writeint(entity_max_mp,0);
writeint(entity_max_sp,0);
writeint(x,0);
writeint(y,0);


if global.playerid=0
scr_send_client(SEND_ROOM,0)

clearbuffer(0);
