
clearbuffer(0);
writebyte(MSG_PLAYERINFO,0);
writeushort(global.playerid,0)
writeushort(weapon_sprite,0);
writeushort(weapon_equipped,0);
writefloat(movespeed_mod,0);
writefloat(jumpspeed_mod,0);
writefloat(gravity_mod,0);
//booleans
byte=buildbyte(inmission,readytorecive,0,0,0,0,0,0);
writebyte(byte,0);


if global.playerid=0
scr_send_client(SEND_ALL,0)
else scr_send_server(0);

clearbuffer(0);
