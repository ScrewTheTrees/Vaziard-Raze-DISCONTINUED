///scr_changeudp(Port)


closesocket(global.udp);
global.udp=udpconnect(argument0,2);
global.udpport_client=argument0;


msg_send_connectinfo();
