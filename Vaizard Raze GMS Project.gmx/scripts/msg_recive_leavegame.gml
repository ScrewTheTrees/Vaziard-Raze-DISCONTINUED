playeridd=readushort(0);
clearbuffer(0);


if instance_exists(obj_otherplayer)
{
obj_otherplayer.tempid=playeridd;

with(obj_otherplayer)
{
if playerid=tempid
{
instance_destroy();
}
}
}