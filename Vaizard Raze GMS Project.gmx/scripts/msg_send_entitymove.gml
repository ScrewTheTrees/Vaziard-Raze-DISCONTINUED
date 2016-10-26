var movement1;


clearbuffer(0)
writebyte(MSG_ENTITYMOVE,0)
writeushort(global.playerid,0)
writeshort(obj_player.x,0)
writeshort(obj_player.y,0)
writefloat(vspeed,0)
writefloat(hspeed,0)


if global.playerid=0
scr_send_client_udp(SEND_ALL,0)
else scr_send_server_udp(0);

clearbuffer(0);
