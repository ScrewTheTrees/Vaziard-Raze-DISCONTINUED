


clearbuffer(0)
writebyte(MSG_ENTITY_MOVE,0)
writeint(entityid,0)
writeshort(x,0)
writeshort(y,0)
writefloat(vspeed,0)
writefloat(hspeed,0)
writeshort(facedir,0)
writefloat(movespeed,0);


if global.playerid=0
    scr_send_client_udp(SEND_ALL,0)

clearbuffer(0);
