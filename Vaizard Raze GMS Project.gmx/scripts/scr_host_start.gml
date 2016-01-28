global.listen = tcplisten(global.port, 10, true);
global.udp=udpconnect(global.udpport_server,2);
if (global.listen <= 0)
{
  show_message("Failed to listen on port: "+string(global.port));
  game_restart();
}
global.playerid=0;

instance_create(0,0,obj_wait)
//instance_create(0,0,obj_chatbox)
instance_create(0,0,obj_recive_packet)

scr_changeroom(room_test,0,"Starting");