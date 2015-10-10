///msg_send_playerid(ID)

clearbuffer(0);
writebyte(MSG_PLAYERID,0);
writebyte(argument0,0);
writestring(global.onlineversion,0);
scr_send_client(SEND_SELF,0);
clearbuffer(0);
