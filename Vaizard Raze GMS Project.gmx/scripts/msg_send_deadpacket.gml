if global.playerid>0
{
    clearbuffer(0);
    writebyte(MSG_DEADPACKET,0);
    writeshort(global.playerid,0)
    scr_send_server_udp();
    clearbuffer(0);
}
