playeridd=readushort(0);
clearbuffer(0);



obj_otherplayer.tempid=playeridd;

with(obj_otherplayer)
{
if playerid=tempid
{
instance_destroy();
}
}
