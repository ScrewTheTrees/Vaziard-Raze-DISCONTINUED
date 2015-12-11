///scr_changeudp(Port)


closesocket(global.udp);
global.udp=udpconnect(argument0,2);
