var messageid=argument0;
  switch(messageid)
  {
    case MSG_LEAVEGAME: msg_recive_leavegame(); break;
    case MSG_JOINGAME: msg_recive_joingame(); break;
    case MSG_MOVE: msg_recive_move(); break;
    case MSG_UPDATE_MYROOM: msg_recive_update_myroom(); break;
    case MSG_CONNECTINFO: msg_recive_connectinfo(); break;
    case MSG_PLAYERID: msg_recive_playerid(); break;
    case MSG_DEADPACKET: msg_recive_deadpacket(); break;
    case MSG_CREATE_PROJECTILE: msg_recive_projectile_create(); break;
    case MSG_PLAYERINFO: msg_recive_playerinfo(); break;
    
  }
  clearbuffer(0);
