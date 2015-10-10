playeridd=readushort();
clearbuffer();



obj_otherplayer.tempid=playeridd;

with(obj_otherplayer)
{
if playerid=tempid
{
instance_destroy();
}
}