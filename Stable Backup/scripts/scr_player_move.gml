//First of all, retrieve packets from all other players
if (object_index==obj_otherplayer && global.host==true)
   {
   scr_recive_message();
   }
//Reset that shit
scr_player_physics();  


//If this is the player it needs to accept the input
if (object_index==obj_player)
   {
   scr_player_input_reset();
   scr_player_inputcontroller();
   
   scr_player_moveupdateonline();
   
   stuck=false;//Stop being stuck
   }

//
scr_player_movespeed();
scr_entity_movement(movespeed,facedir,movescanheight,movescanintervall);
scr_entity_jump(press_jump,do_jump,do_walljump_right,do_walljump_left,jumpspeed,walljumpspeed,walljumpupspeed,jumpspeed_mod);


if stuck==true {scr_entity_freeze();}
 

scr_player_vars_reset(); //Reset vars that should be reset
