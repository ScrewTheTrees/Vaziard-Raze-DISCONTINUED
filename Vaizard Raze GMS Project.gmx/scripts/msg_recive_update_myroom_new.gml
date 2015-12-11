var tempid,rroom;

tempid=readushort(0);
rroom=readshort(0);
clearbuffer(0);

if global.playerid=0
{
writebyte(MSG_UPDATE_MYROOM,0)
writeushort(tempid,0)
writeshort(rroom,0)
scr_send_client(SEND_OTHER,0)
clearbuffer(0);
}


obj_otherplayer.tempid=tempid;
obj_otherplayer.rroom=rroom;

with(obj_otherplayer)
{
if playerid=tempid
{
myroom=rroom;
}
}