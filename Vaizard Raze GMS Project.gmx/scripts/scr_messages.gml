var messageid=argument0;
    switch(messageid)
  {
    case MSG_EXIT: msg_recive_exit(); break;
    case MSG_MOVE: msg_recive_move(); break;
    
    
    
    case MSG_DEADPACKET: 
         clearbuffer(0);
         writebyte(MSG_DEADPACKET,0)
         if global.playerid=0
         scr_send_client_udp(SEND_SELF,0)
         else scr_send_server_udp();
         clearbuffer(0);
         break;
  }
  clearbuffer(0);
