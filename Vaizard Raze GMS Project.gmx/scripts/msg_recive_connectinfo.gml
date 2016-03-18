if instance_exists(obj_otherplayer)
{
ppid=readushort(0);
cclient_port=readushort(0);

clearbuffer(0);

obj_otherplayer.tempid=ppid;
obj_otherplayer.cclient_port=cclient_port;

with(obj_otherplayer)
{
if playerid==tempid
{
client_port=cclient_port;
}
}//With


}


if global.playerid==0
{
writebyte(MSG_CONNECTINFO,0);
writeushort(ppid,0);
writeushort(cclient_port,0);
scr_send_client(SEND_OTHER,0);
clearbuffer(0);
}
