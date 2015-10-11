//Recive Code
var playeridd,xx,yy,zz,mmoving,ddirection,zzspeed;

playeridd=readushort(0);
xx=readushort(0);
yy=readushort(0);
zz=readushort(0);
ddirection=readshort(0)/100;
mmoving=readbyte(0)/10;
zzspeed=readbyte(0)
clearbuffer(0);

if global.playerid=0
{
writebyte(MSG_MOVE_XY,0)
writeushort(playeridd,0);
writeushort(xx,0);
writeushort(yy,0);
writeushort(zz,0);
writeshort(ddirection*100,0);
writebyte(sspeed*10,0);

scr_send_client(SEND_OTHER,0)
clearbuffer(0);
}

obj_otherplayer.xx=xx;
obj_otherplayer.yy=yy;
obj_otherplayer.ddirection=ddirection;
obj_otherplayer.sspeed=sspeed;

with(obj_otherplayer)
{
if playerid=tempid
{
x=xx;
y=yy;
direction=ddirection;
speed=sspeed;
}
}
