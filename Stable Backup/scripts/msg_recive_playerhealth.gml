if instance_exists(obj_otherplayer)
{
tempid=readushort(0);
player_hhealth=readint(0);

clearbuffer(0);


obj_otherplayer.tempid=tempid;
obj_otherplayer.player_hhealth=player_hhealth;

with(obj_otherplayer)
{
if playerid==tempid
{
player_health=player_hhealth;

}
}//With


}

if global.playerid==0
{
writebyte(MSG_PLAYERHEALTH,0);
writeushort(tempid,0);
writeint(player_healthh,0);
scr_send_client(SEND_OTHER,0);
clearbuffer(0);
}
