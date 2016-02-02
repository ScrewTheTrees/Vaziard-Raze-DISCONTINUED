//Recive Code
var tempid,xx,yy,movement1,vvspeed,hhspeed;

tempid=readushort(0);
xx=readshort(0);
yy=readshort(0);
movement1=readbyte(0);
vvspeed=readfloat(0);
hhspeed=readfloat(0);

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

scr_send_client_udp(SEND_ALL,0)
clearbuffer(0);
}


    if instance_exists(obj_otherplayer) {
obj_otherplayer.tempid=tempid;
obj_otherplayer.xx=xx;
obj_otherplayer.yy=yy;
obj_otherplayer.vvspeed=vvspeed;
obj_otherplayer.hhspeed=hhspeed;

obj_otherplayer.movement1=movement1;


with(obj_otherplayer)
{
if playerid==tempid
{
x=xx;
y=yy;
vspeed=vvspeed;
hspeed=hhspeed;
press_right=readbit(movement1,7);
press_left=readbit(movement1,6);
press_up=readbit(movement1,5);
press_down=readbit(movement1,4);
press_jump=readbit(movement1,3);
do_sidedash_right=readbit(movement1,2);
do_sidedash_left=readbit(movement1,1);
stuck=readbit(movement1,0);
}
}

    }