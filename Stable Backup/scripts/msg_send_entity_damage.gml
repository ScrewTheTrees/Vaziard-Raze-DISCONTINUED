///msg_send_entity_damage(+Damage -healing)
clearbuffer(0)
writebyte(MSG_ENTITY_DAMAGE,0);
writeint(entityid,0);

writeint(argument0,0);

if global.playerid=0
scr_send_client(SEND_ALL,0)
else scr_send_server(0);

clearbuffer(0);
