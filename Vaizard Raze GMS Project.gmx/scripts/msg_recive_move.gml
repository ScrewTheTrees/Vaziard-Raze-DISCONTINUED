//Recive Code
var playeridd,xx,yy,zz,mmoving,ddirection,zzspeed;

playeridd=readushort();
xx=readushort();
yy=readushort();
zz=readushort();
ddirection=readshort()/100;
mmoving=readbyte()/10;
zzspeed=readbyte()
clearbuffer();

if global.playerid=0
{
writebyte(MSG_MOVE_XY)
writeushort(playeridd);
writeushort(xx);
writeushort(yy);
writeushort(zz);
writeshort(ddirection*100);
writebyte(sspeed*10);

scr_send_client(SEND_OTHER)
clearbuffer();
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