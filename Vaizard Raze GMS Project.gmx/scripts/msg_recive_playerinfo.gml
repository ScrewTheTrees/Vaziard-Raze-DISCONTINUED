if instance_exists(obj_otherplayer)
{
tempid=readushort(0);
wweapon_sprite=readushort(0);
wweapon_equipped=readushort(0);
mmovespeed_mod=readfloat(0);
jjumpspeed_mod=readfloat(0);
ggravity_mod=readfloat(0);

clearbuffer(0);


obj_otherplayer.tempid=tempid;
obj_otherplayer.wweapon_sprite=wweapon_sprite;
obj_otherplayer.wweapon_equipped=wweapon_equipped;
obj_otherplayer.mmovespeed_mod=mmovespeed_mod;
obj_otherplayer.jjumpspeed_mod=jjumpspeed_mod;
obj_otherplayer.ggravity_mod=ggravity_mod;

with(obj_otherplayer)
{
if playerid==tempid
{
weapon_sprite=wweapon_sprite;
weapon_equipped=wweapon_equipped;
movespeed_mod=mmovespeed_mod;
jumpspeed_mod=jjumpspeed_mod;
gravity_mod=ggravity_mod;
}
}//With


}

if global.playerid==0
{
writebyte(MSG_PLAYERINFO,0);
writeushort(tempid,0);
writeushort(weapon_sprite,0);
writeushort(weapon_equipped,0);
scr_send_client(SEND_OTHER,0);
clearbuffer(0);
}