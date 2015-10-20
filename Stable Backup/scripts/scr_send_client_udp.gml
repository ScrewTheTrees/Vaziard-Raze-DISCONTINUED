//send_client(Players,playerID)
/*
send_client(Player/s)

0=Other players
1=Current Player
2=Player with the playerid defined in argument1
3=Send to all
4=Send to others in room
5= All with variable in_mission=true
*/

switch(argument0)
     {
case 0:
if instance_exists(obj_client)
{
obj_client.tempid=playerid
with(obj_client)
{
if tempid=playerid{}
else {
sendmessage(global.udp,client_ip,global.udpport_client,0)
     }
}
}
break;

case 1:
if object_index=obj_client
sendmessage(global.udp,client_ip,global.udpport_client,0)
else sendmessage(global.udp,lastinIP(),global.udpport_client,0)
break;

case 2:
obj_client.tempid=argument1
with(obj_client)
{
if playerid=tempid
{
sendmessage(global.udp,client_ip,global.udpport_client,0)
}
}
break;

case 3:
if instance_exists(obj_client)
{
with(obj_client)
 {
 sendmessage(global.udp,client_ip,global.udpport_client,0)
 }
}
break;
      }