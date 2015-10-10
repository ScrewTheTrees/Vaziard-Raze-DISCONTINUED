writebyte(MSG_ENTER)
writeushort(global.myid)
writestring(global.playername)
writeushort(x)
writeushort(y)
writeushort(z)
scr_send_client(SEND_SELF)
clearbuffer();


obj_otherplayer.tempid=playerid;

with obj_otherplayer
 {
   if playerid!=tempid
   {
   clearbuffer();
   writebyte(MSG_ENTER);
   writeushort(playerid);
   writestring(name)
   writeushort(x);
   writeushort(y);
   writeushort(z);
   scr_send_client(SEND_PLAYER,tempid)
   clearbuffer();
   }
 }