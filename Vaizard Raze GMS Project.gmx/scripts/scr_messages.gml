var messageid=argument0;
  switch(messageid)
  {
    case MSG_LEAVEGAME: msg_recive_leavegame(); break;
    case MSG_JOINGAME: msg_recive_joingame(); break;
    case MSG_PLAYERMOVE: msg_recive_playermove(); break;
    case MSG_UPDATE_MYROOM: msg_recive_update_myroom(); break;
    case MSG_CONNECTINFO: msg_recive_connectinfo(); break;
    case MSG_PLAYERID: msg_recive_playerid(); break;
    case MSG_DEADPACKET: msg_recive_deadpacket(); break;
    case MSG_CREATE_PROJECTILE: msg_recive_projectile_create(); break;
    case MSG_PLAYERINFO: msg_recive_playerinfo(); break;
    case MSG_ENTITY_CREATE: msg_recive_entity_create(); break;
    case MSG_ENTITY_DAMAGE: msg_recive_entity_damage(); break;
    case MSG_ENTITY_MOVE: msg_recive_entity_move(); break;
    case MSG_ENTITY_HEALTH: msg_recive_entity_health(); break;
    case MSG_MAP_BLOCKS: msg_recive_map_blocks(); break;
    case MSG_MAP_PROPS: msg_recive_map_props(); break;
    case MSG_MOVEMODINFO: msg_recive_movemodinfo(); break;
    case MSG_CHANGEROOM: msg_recive_changeroom(); break;
  }
  clearbuffer(0);
