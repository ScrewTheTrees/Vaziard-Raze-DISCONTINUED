if instance_exists(obj_otherplayer)
{
ppid=readushort(0);
client_port=readushort(0);

clearbuffer(0);

if global.playerid==0
{
writebyte(MSG_CONNECTINFO,0);
writeushort(ppid,0);
writeushort(client_port,0);
scr_send_client(SEND_OTHER,0);
clearbuffer(0);
}

}
