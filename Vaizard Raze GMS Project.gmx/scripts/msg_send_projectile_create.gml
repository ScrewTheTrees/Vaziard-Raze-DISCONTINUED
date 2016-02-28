///msg_send_projectile_create(AutomaticFetchOfInformation)


var dd=argument[0];

clearbuffer(0)
writebyte(MSG_CREATE_PROJECTILE,0)

if team==TEAM_PLAYER  writebyte(TEAM_ALLY,0)
else writebyte(team,0)

writeushort(proj_type,0);
writeshort(damage1,0);
writeshort(damage2,0);
writeshort(damage3,0);
writeshort(facedir,0);
writefloat(dir,0);
writeint(color,0);
writefloat(hspeed,0);
writefloat(vspeed,0);
writefloat(gravity,0);
writeint(x,0);
writeint(y,0);

if global.playerid=0
scr_send_client(SEND_ROOM,0)
else scr_send_server(0);

clearbuffer(0);
