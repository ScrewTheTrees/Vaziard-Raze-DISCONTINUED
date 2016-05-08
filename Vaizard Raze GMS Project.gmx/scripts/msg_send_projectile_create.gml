///msg_send_projectile_create()


var dd;

clearbuffer(0)
writebyte(MSG_CREATE_PROJECTILE,0)

if team==TEAM_PLAYER  writebyte(TEAM_ALLY,0)
else writebyte(team,0)

writeshort(proj_type,0);
writeint(global.myroom,0);
writeint(damage1,0);
writeint(damage2,0);
writeint(damage3,0);
writeshort(facedir,0);
writefloat(dir,0);
writeint(color,0);
writefloat(hspeed,0);
writefloat(vspeed,0);
writefloat(gravity,0);
writeint(x,0);
writeint(y,0);

if global.playerid=0
scr_send_client(SEND_ROOM,global.myroom)
else scr_send_server(0);

clearbuffer(0);
