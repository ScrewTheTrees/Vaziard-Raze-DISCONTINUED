pid=readushort(0);
clearbuffer(0);

obj_otherplayer.tempid=pid;

if instance_exists(obj_otherplayer)
{
with(obj_otherplayer)
{
if playerid==tempid
   {

    if global.playerid=0
       {
       clearbuffer(0);
       writebyte(MSG_DEADPACKET,0)
       writeushort(tempid,0);
       scr_send_client_udp(SEND_SELF,0)
       clearbuffer(0);
       }
    }
}
}
