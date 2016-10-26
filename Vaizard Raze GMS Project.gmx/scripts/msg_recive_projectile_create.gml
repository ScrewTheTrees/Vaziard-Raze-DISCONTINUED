//Recive Code
teamm=readbyte(0);
proj_type=readshort(0);
send_room=readint(0);
damage1=readint(0);
damage2=readint(0);
damage3=readint(0);
facedirr=readshort(0);
dirr=readfloat(0);
colorr=readint(0);
hhspeed=readfloat(0);
vvspeed=readfloat(0);
ggravity=readfloat(0);
xx=readint(0);
yy=readint(0);

clearbuffer(0);

if global.playerid=0
{
writebyte(MSG_CREATE_PROJECTILE,0)
writebyte(teamm,0)
writeshort(proj_type,0);
writeint(send_room,0);
writeint(damage1,0);
writeint(damage2,0);
writeint(damage3,0);
writeshort(facedirr,0);
writefloat(dirr,0);
writeint(colorr,0);
writefloat(hhspeed,0);
writefloat(vvspeed,0);
writefloat(ggravity,0);
writeint(xx,0);
writeint(yy,0);

if global.playerid==0 
scr_send_client(SEND_ROOM_OTHER,send_room)

clearbuffer(0);
}
if send_room=global.myroom
{
proj=scr_projectile_spawn(xx,yy,proj_type,teamm,damage1,damage2,damage3,facedirr,dirr,colorr);
scr_projectile_spawn_velocity(proj,hhspeed,vvspeed,ggravity);
}
