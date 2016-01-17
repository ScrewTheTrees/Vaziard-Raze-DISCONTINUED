if instance_exists(obj_otherplayer)
{
var ttempid,rroom;

ttempid=readushort(0);
rroom=readshort(0);
clearbuffer(0);

if global.playerid=0
{
writebyte(MSG_UPDATE_MYROOM,0)
writeushort(ttempid,0)
writeshort(rroom,0)
scr_send_client(SEND_OTHER,0)
clearbuffer(0);
}


obj_otherplayer.tempid=ttempid;
obj_otherplayer.rroom=rroom;

with(obj_otherplayer)
{
if playerid=tempid
{
myroom=rroom;
}
}

}
