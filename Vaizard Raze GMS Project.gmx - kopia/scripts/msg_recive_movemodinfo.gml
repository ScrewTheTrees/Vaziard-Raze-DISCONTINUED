if instance_exists(obj_otherplayer)
{
tempid=readushort(0);
mmovespeed_mod=readfloat(0);
jjumpspeed_mod=readfloat(0);
ggravity_mod=readfloat(0);

clearbuffer(0);


obj_otherplayer.tempid=tempid;
obj_otherplayer.mmovespeed_mod=mmovespeed_mod;
obj_otherplayer.jjumpspeed_mod=jjumpspeed_mod;
obj_otherplayer.ggravity_mod=ggravity_mod;


with(obj_otherplayer)
{
if playerid==tempid
{
movespeed_mod=mmovespeed_mod;
jumpspeed_mod=jjumpspeed_mod;
gravity_mod=ggravity_mod;
}
}//With


}

if global.playerid==0
{
writebyte(MSG_MOVEMODINFO,0);
writeushort(tempid,0);
writefloat(mmovespeed_mod,0);
writefloat(jjumpspeed_mod,0);
writefloat(ggravity_mod,0);

scr_send_client(SEND_OTHER,0);
clearbuffer(0);
}
