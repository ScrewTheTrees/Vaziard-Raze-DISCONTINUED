//Recive Code
var tempid,movement1;

tempid=readushort(0);
movement1=readbyte(0);




    if instance_exists(obj_otherplayer) {

obj_otherplayer.tempid=tempid;
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

x=readshort(0);
y=readshort(0);
vspeed=readfloat(0);
hspeed=readfloat(0);
facedir=readshort(0);
movespeed=readfloat(0);
}
}

    }
    
if global.playerid=0
    {
    scr_send_client_udp(SEND_ALL,0)
    }
clearbuffer(0);
