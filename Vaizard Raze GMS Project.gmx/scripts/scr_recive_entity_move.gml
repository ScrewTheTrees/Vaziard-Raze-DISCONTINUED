//Recive Code
var tempid,xx,yy,movement1,vvspeed,hhspeed;

tempid=readushort(0);
xx=readshort(0);
yy=readshort(0);
vvspeed=readfloat(0);
hhspeed=readfloat(0);

if global.playerid=0
{
writebyte(MSG_MOVE,0)
writeushort(tempid,0)
writeshort(xx,0)
writeshort(yy,0)
writefloat(vvspeed,0)
writefloat(hhspeed,0)

scr_send_client_udp(SEND_ALL,0)
clearbuffer(0);
}


    if instance_exists(obj_otherplayer) {
obj_otherplayer.tempid=tempid;
obj_otherplayer.xx=xx;
obj_otherplayer.yy=yy;
obj_otherplayer.vvspeed=vvspeed;
obj_otherplayer.hhspeed=hhspeed;



with(obj_otherplayer)
{
if playerid==tempid
{
x=xx;
y=yy;
vspeed=vvspeed;
hspeed=hhspeed;
}
}

    }
