//Recive Code
var tempid,xx,yy,movement1,vvspeed,hhspeed;

tempid=readushort();
xx=readshort();
yy=readshort();
movement1=readbyte();
vvspeed=readfloat();
hhspeed=readfloat();

clearbuffer(0);

if global.playerid=0
{
writebyte(MSG_MOVE,0)
writeushort(tempid,0)
writeshort(xx,0)
writeshort(yy,0)
writebyte(movement1,0)
writefloat(vvspeed,0)
writefloat(hhspeed,0)

scr_send_client_udp(SEND_OTHER,0)
clearbuffer(0);
}


obj_otherplayer.tempid=tempid;
obj_otherplayer.xx=xx;
obj_otherplayer.yy=yy;
obj_otherplayer.movement1=movement1;
obj_otherplayer.vvspeed=vvspeed;
obj_otherplayer.hhspeed=hhspeed;

with(obj_otherplayer)
{
if playerid=tempid
{
x=xx;
y=yy;
vspeed=vvspeed;
hspeed=hhspeed;
press_right=readbit(movement1,0);
press_left=readbit(movement1,1);
press_up=readbit(movement1,2);
press_down=readbit(movement1,3);
press_jump=readbit(movement1,4);
do_sidedash_right=readbit(movement1,5);
do_sidedash_left=readbit(movement1,6);
}
}
