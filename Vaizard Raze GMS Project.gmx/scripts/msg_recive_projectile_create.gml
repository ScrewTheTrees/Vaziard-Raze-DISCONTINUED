//Recive Code
var team,proj_type,damage1,damage2,damage3,facedir,dir,color,hsspeed,vvspeed,ggravity,xx,yy;

team=readbyte(0);
proj_type=readushort(0);
damage1=readshort(0);
damage2=readshort(0);
damage3=readshort(0);
facedir=readshort(0);
dir=readfloat(0);
color=readint(0);
hhspeed=readfloat(0);
vvspeed=readfloat(0);
ggravity=readfloat(0);
xx=readint(0);
yy=readint(0);

clearbuffer(0);

if global.playerid=0
{
writebyte(MSG_CREATE_PROJECTILE,0)
writebyte(team,0)
writeushort(proj_type,0);
writeshort(damage1,0);
writeshort(damage2,0);
writeshort(damage3,0);
writeshort(facedir,0);
writefloat(dir,0);
writeint(color,0);
writefloat(hhspeed,0);
writefloat(vvspeed,0);
writefloat(ggravity,0);
writeint(xx,0);
writeint(yy,0);

if global.playerid==0 
scr_send_client(SEND_ROOM,0)

clearbuffer(0);
}

pro=scr_projectile_create(xx,yy,proj_type,team,damage1,damage2,damage3,facedir,direction,color);
scr_projectile_spawn_velocity(pro,hhspeed,vvspeed,ggravity);
