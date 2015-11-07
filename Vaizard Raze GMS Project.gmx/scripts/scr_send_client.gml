///scr_send_client(Player, PlayerID)
/*


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
obj_otherplayer.tempid=playerid
with(obj_client)
{
if tempid=playerid{}
else {
sendmessage(client,0,0,0)
     }
}
break;

case 1:
sendmessage(client,0,0,0);
break;

case 2:
obj_otherplayer.tempid=argument1
with(obj_otherplayer)
{
if playerid=tempid
{
sendmessage(client,0,0,0)
}
}

case 3:
with(obj_otherplayer)
 {
 sendmessage(client)
 }
break;
      }
