///msg_send_entity_damage()
//MUST BE CALLED BY OBJ_OTHERPLAYER

clearbuffer(0)
writebyte(MSG_MAP_BLOCKS,0);
writeint(instance_number(obj_solid_block)-1,0);
with (obj_solid_block)
{
    writeint(x,0);
    writeint(y,0);
}

writeint(instance_number(obj_solid_ceiling)-1,0);
with (obj_solid_ceiling)
{
    writeint(x,0);
    writeint(y,0);
}

writeint(instance_number(obj_solid_ground)-1,0);
with (obj_solid_ground)
{
    writeint(x,0);
    writeint(y,0);
}

writeint(instance_number(obj_solid_sidewall)-1,0);
with (obj_solid_sidewall)
{
    writeint(x,0);
    writeint(y,0);
}

writeint(instance_number(obj_solid_slope_l)-1,0);
with (obj_solid_slope_l)
{
    writeint(x,0);
    writeint(y,0);
}

writeint(instance_number(obj_solid_slope_r)-1,0);
with (obj_solid_slope_r)
{
    writeint(x,0);
    writeint(y,0);
}


scr_send_client(SEND_SELF,0)

clearbuffer(0);
