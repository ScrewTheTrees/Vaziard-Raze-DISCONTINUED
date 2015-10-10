clearbuffer()
writebyte(MSG_MOVE)
writeushort(global.playerid)
writeushort(x)
writeushort(y)
writefloat(speed)

if global.playerid=0
scr_send_client(SEND_ALL)
else scr_send_server();

clearbuffer();
