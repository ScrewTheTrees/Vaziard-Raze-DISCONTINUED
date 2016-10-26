clientt = tcpaccept(global.listen, true);



if clientt>0
{

client_ipp = lastinIP()


tempid=get_next_playerid();


ii=instance_create(128,128,obj_otherplayer)
ii.client=clientt;
ii.playerid=tempid;
ii.client_ip=client_ipp;
}
