global.serverip=get_string("Pl0x enter IP","127.0.0.1")

server = tcpconnect(global.serverip, global.port, true);
global.udp=udpconnect(global.udpport_client,2);

if(server <= 0)
{
  show_message("Cannot connect to server");
  game_restart();
}
else
{
global.server = server;
setnagle(global.server,true);

instance_create(0,0,obj_recive_packet)
instance_create(0,0,obj_chatbox)

//scr_changeroom(ROOM_FRONTYARD,0,0);
}
