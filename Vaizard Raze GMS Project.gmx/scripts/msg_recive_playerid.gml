         if global.playerid!=0
            {
            global.playerid=readushort(0);
            if (global.onlineversion!=readstring(0)) show_message_async("Online Versions not matching, make sure both the host and you have the newest version!");
            }
         clearbuffer(0);
         
         
         msg_send_connectinfo();
