writebyte(MSG_EXIT);
writeushort(global.myid);
scr_send_client(SEND_ALL);
clearbuffer();

