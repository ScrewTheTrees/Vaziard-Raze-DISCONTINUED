///msg_send_changeroom_room(room,entranceID,Text);
clearbuffer(0);
writebyte(MSG_CHANGEROOM,0)
writeint(argument0,0)
writeint(argument1,0)
writestring(argument2,0)
scr_send_client(SEND_ROOM,obj_player.myroom)
clearbuffer(0);
