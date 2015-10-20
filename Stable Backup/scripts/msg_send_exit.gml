writebyte(MSG_EXIT,0);
writeushort(global.myid,0);
scr_send_client(SEND_ALL,0);
clearbuffer(0);