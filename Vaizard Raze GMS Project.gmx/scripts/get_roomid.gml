///get_roomid(Room / ID ,  0 room-id / 1 id-room )
var roomid,selid;

roomid=argument0;
selid=0;

if (argument1==0) {
       switch (argument0)
       {
       case rm: selid=1; break;
       }}
else {
       switch (argument0)
       {
       case 1: selid=rm; break;
       }}


return selid;

