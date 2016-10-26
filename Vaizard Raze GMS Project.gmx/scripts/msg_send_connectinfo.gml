
clearbuffer(0);
writebyte(MSG_CONNECTINFO,0);
writeushort(global.playerid,0);
writeushort(global.udpport_client,0);

if global.playerid=0
scr_send_client(SEND_ALL,0)
else scr_send_server(0);

clearbuffer(0);
