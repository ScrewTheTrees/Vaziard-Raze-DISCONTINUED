var messageid=argument0;
    switch(messageid)
  {
    case MSG_ENTER: msg_recive_enter(); break;
  
    
    
    
    case MSG_DEADPACKET: 
         if global.playerid==0
         {
         clearbuffer(0);
         writebyte(MSG_DEADPACKET,0)
         if global.playerid=0
         scr_send_client_udp(SEND_SELF,0)
         else scr_send_server_udp();
         clearbuffer(0);
         }
    break;
  }
  clearbuffer(0);
