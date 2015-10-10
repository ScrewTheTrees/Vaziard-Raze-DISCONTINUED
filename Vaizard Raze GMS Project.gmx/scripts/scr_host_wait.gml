client = tcpaccept(global.listen, true);



if client>0
{

client_ipp = lastinIP()
//show_message(client_ipp);


tempid=get_next_playerid();

setnagle(client,true);

ii=instance_create(0,0,obj_otherplayer)
ii.playerid=tempid;
ii.client_ip=client_ipp;
}
