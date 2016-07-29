///msg_send_entity_damage()
//MUST BE CALLED BY OBJ_OTHERPLAYER

global.me=playerid;

clearbuffer(0)
with (obj_solidparent)
{
    writebyte(MSG_MAP_BLOCKS,0);
    writeint(object_index,0);
    writeint(x,0);
    writeint(y,0);
    scr_send_client(SEND_PLAYER,global.me)
    clearbuffer(0);
}


clearbuffer(0);
