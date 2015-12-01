//Must be placed in the otherplayer object
    
            //Send Host player
clearbuffer(0);
writebyte(MSG_JOINGAME,0)
writeushort(global.playerid,0)
scr_send_client(SEND_SELF,0)
clearbuffer(0);

    //Send this player to all the other players
writebyte(MSG_JOINGAME,0);
writeushort(playerid,0);
scr_send_client(SEND_OTHER,0)
clearbuffer(0);


   //Send to all the other players to this player :)
obj_otherplayer.tempidd=playerid;
      with (obj_otherplayer)
      {
       if (playerid!=tempidd)
       {
       clearbuffer(0);
       writebyte(MSG_JOINGAME,0);
       writeushort(playerid,0);
       scr_send_client(SEND_PLAYER,tempid)
       clearbuffer(0);
       }
      }
