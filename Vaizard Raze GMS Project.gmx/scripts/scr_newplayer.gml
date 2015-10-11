//Must be placed in the otherplayer object
    
            //Host player
clearbuffer(0);
writebyte(MSG_ENTER,0)
writebyte(global.playerid,0)

scr_send_client(SEND_SELF,0)
clearbuffer(0);

    //Send this player to all the other players
writebyte(MSG_ENTER,0);
writebyte(playerid,0);
scr_send_client(SEND_OTHER,0)
clearbuffer(0);


   //Send to all the other players :)
clearbuffer(0);
writebyte(MSG_ENTER,0);
writebyte(playerid,0);
scr_send_client(SEND_OTHER,tempid)
clearbuffer(0);
