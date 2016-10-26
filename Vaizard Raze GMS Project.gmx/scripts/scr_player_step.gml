//Reset that shit
scr_player_physics();  

entityid=playerid;

//If this is the player it needs to accept the input
if (object_index==obj_player)
   {
   scr_player_awareness(); //Update specific details that might be very neccesary for the player
   
   
   scr_entity_input_reset();
   scr_player_inputcontroller();
   
   scr_player_moveupdateonline();
   
   
   stuck=false;//Stop being stuck
   
   global.myrrom=room;
   myroom=global.myroom; //Update important information
   }

//Set weapon animations and shit
scr_weapon_animation();
   
//Player physics
scr_player_movespeed();
scr_entity_movement();
scr_entity_jump();


if stuck==true {scr_entity_freeze();}

scr_entity_vars_reset(); //Reset vars that should be reset

color_torso_extra = get_team_color(team); //Set secoundary torso color to team color

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
