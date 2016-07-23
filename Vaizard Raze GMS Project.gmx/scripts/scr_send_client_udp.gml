//send_client(Players,playerID)
/*
send_client(Player/s)

0=Other players
1=Current Player
2=Player with the playerid defined in argument1
3=Send to all
*/

switch(argument0)
     {
case 0:
if instance_exists(obj_otherplayer)
{
obj_otherplayer.tempid=playerid
with(obj_otherplayer)
{
if tempid=playerid{}
else {
sendmessage(global.udp,client_ip,client_port,0)
     }
}
}
break;

case 1:
if object_index=obj_otherplayer
sendmessage(global.udp,client_ip,client_port,0)
else sendmessage(global.udp,lastinIP(),client_port,0)
break;

case 2:
obj_otherplayer.tempid=argument1
with(obj_otherplayer)
{
if playerid=tempid
{
sendmessage(global.udp,client_ip,client_port,0)
}
}
break;

case 3:
if instance_exists(obj_otherplayer)
{
with(obj_otherplayer)
 {
 sendmessage(global.udp,client_ip,client_port,0)
 }
}
break;
      }
      
      
      clearbuffer(0);