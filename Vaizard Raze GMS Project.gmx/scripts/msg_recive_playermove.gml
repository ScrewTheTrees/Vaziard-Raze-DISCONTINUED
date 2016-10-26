//Recive Code
var tempid,xx,yy,movement1,vvspeed,hhspeed;

movement1=readbyte(0);

if global.playerid=0
{
writebyte(MSG_MOVE,0)
writebyte(movement1,0)

scr_send_client_udp(SEND_ALL,0)
clearbuffer(0);
}


    if instance_exists(obj_otherplayer) {

obj_otherplayer.movement1=movement1;


with(obj_otherplayer)
{
if playerid==tempid
{
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
