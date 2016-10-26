if instance_exists(obj_otherplayer)
{
tempid=readushort(0);
wweapon_sprite=readushort(0);
wweapon_equipped=readushort(0);
byte=readbyte(0);

clearbuffer(0);


obj_otherplayer.tempid=tempid;
obj_otherplayer.wweapon_sprite=wweapon_sprite;
obj_otherplayer.wweapon_equipped=wweapon_equipped;
obj_otherplayer.byte=byte;


with(obj_otherplayer)
{
if playerid==tempid
{
weapon_sprite=wweapon_sprite;
weapon_equipped=wweapon_equipped;
inmission=readbit(byte,7);
ready=readbit(byte,6);
hasmap=readbit(byte,5);
}
}//With


}

if global.playerid==0
{
writebyte(MSG_PLAYERINFO,0);
writeushort(tempid,0);
writeushort(wweapon_sprite,0);
writeushort(wweapon_equipped,0);
writebyte(byte,0);

scr_send_client(SEND_OTHER,0);
clearbuffer(0);
}
