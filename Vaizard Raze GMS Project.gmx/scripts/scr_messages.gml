var messageid=argument0;
  switch(messageid)
  {
    case MSG_LEAVEGAME: msg_recive_leavegame(); break;
    case MSG_JOINGAME: msg_recive_joingame(); break;
    case MSG_MOVE: msg_recive_move(); break;
    case MSG_UPDATE_MYROOM: msg_recive_update_myroom(); break;

    //Special packets
    case MSG_DEADPACKET: msg_recive_deadpacket(); break;
    case MSG_PLAYERID: msg_recive_playerid(); break;
  }
  clearbuffer(0);
