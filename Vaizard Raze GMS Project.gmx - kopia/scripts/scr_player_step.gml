//Reset that shit
scr_player_physics();  



//If this is the player it needs to accept the input
if (object_index==obj_player)
   {
   scr_player_awareness(); //Update specific details that might be very neccesary for the player
   
   
   scr_player_input_reset();
   scr_player_inputcontroller();
   
   scr_player_moveupdateonline();
   
   
   stuck=false;//Stop being stuck
   
   global.myrrom=room;
   myroom=global.myroom; //Update important information
   }


   
//
scr_player_movespeed();
scr_entity_movement(movespeed,facedir,movescanheight,movescanintervall);
scr_entity_jump(press_jump,do_jump,do_walljump_right,do_walljump_left,jumpspeed,walljumpspeed,walljumpupspeed,jumpspeed_mod);


if stuck==true {scr_entity_freeze();}
 
scr_player_step_stats();

scr_player_vars_reset(); //Reset vars that should be reset



//Only reset movespeed mod if you are the player
if (object_index==obj_player)
   {
   movemodtimer-=1;
   if movemodtimer<=0 
        {
        movemodtimer=30
        msg_send_movemodinfo();
        }
   
    scr_player_mod_reset();
    }
