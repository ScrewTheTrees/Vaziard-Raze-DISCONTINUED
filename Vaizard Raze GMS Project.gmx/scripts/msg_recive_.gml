         if global.playerid=0
         {
         clearbuffer(0);
         writebyte(MSG_DEADPACKET,0)
         scr_send_client_udp(SEND_SELF,0)
         clearbuffer(0);
         }
