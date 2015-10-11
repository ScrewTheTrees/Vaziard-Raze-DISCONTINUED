#define player_scripts
//Player input and functions are handled from here

#define scr_player_move
//Reset that shit
scr_reset_player_input();





//gravitational needs
scr_player_physics();

//If this is the player it needs to accept the input
if object_index==obj_player
   {
   scr_player_inputcontroller();
   scr_player_movespeed();
   }

//Move regardless of anything... wont move if movespeed is 0 anyway
scr_entity_movement(movespeed,movescanheight,movescanslow);

   
   
   


#define scr_player_inputcontroller
//Basic movement
if keyboard_check(global.keybind[KEY_RIGHT])    press_right=true;
if keyboard_check(global.keybind[KEY_LEFT])     press_left=true;
if keyboard_check(global.keybind[KEY_UP])       press_up=true;
if keyboard_check(global.keybind[KEY_DOWN])     press_down=true;


if place_meeting(x,y+4,obj_solidparent)
{
do_walljump_right=false;
do_walljump_right=false;
}



if keyboard_check(global.keybind[KEY_JUMP])
   {
   press_jump=true;
   }

//Jumping
if keyboard_check_pressed(global.keybind[KEY_JUMP]) 
   {
   
   if place_meeting(x,y+4,obj_solidparent)
      {
      do_jump=true;
      }
   else if place_meeting(x-max_movespeed,y,obj_solidparent) //Walljump to the right
      {
      do_walljump_right=true;
      }
   else if place_meeting(x+max_movespeed,y,obj_solidparent) // Walljump to the left
      {
      do_walljump_left=true;
      }
   }
   

   
   
   
   
   //If you press any of the keys you need to send this update to the other players
   if keyboard_check_pressed(global.keybind[KEY_RIGHT])
   or keyboard_check_pressed(global.keybind[KEY_LEFT])
   or keyboard_check_pressed(global.keybind[KEY_UP])
   or keyboard_check_pressed(global.keybind[KEY_DOWN])
   or keyboard_check_pressed(global.keybind[KEY_JUMP])
   or keyboard_check_pressed(global.keybind[KEY_SPECIAL])
   or keyboard_check_released(global.keybind[KEY_RIGHT])
   or keyboard_check_released(global.keybind[KEY_LEFT])
   or keyboard_check_released(global.keybind[KEY_UP])
   or keyboard_check_released(global.keybind[KEY_DOWN])
   or keyboard_check_released(global.keybind[KEY_JUMP])
   or keyboard_check_released(global.keybind[KEY_SPECIAL])
   {
   alarm[0]=0; //Send the movement update NOW
   
   }

#define scr_reset_player_input
press_right=false;
press_left=false;
press_up=false;
press_down=false;

press_ability1=false;
press_ability2=false;
press_ability3=false;

press_special=false;

press_jump=false;
do_jump=false;


do_sidedash_right=false;
do_sidedash_left=false;

do_walljump_right=false;
do_walljump_left=false;


movespeed=0;

#define scr_player_movespeed
//If you are pressing left/right at the same time
if (press_right==true && press_left==true) movespeed=0;

else if (do_walljump_right==true || do_walljump_left==true) movespeed=2;  //Cant move quick while walljumping

else if (do_sidedash_right==true || do_sidedash_left==true) movespeed=0; //Cant move at all while dashing



//You can move just fine otherwise
else if press_right==true 
     {
     movespeed = (max_movespeed+movespeed_mod);
     facedir=1;
     }
else if press_left==true 
     {
     movespeed = (max_movespeed+movespeed_mod);
     facedir=-1;
     }
     
     

#define scr_player_physics
//Clamping speed before the gravity calculation
if vspeed>max_speed vspeed=max_speed;
if vspeed<-max_speed vspeed=-max_speed;
if hspeed>max_speed hspeed=max_speed;
if hspeed<-max_speed hspeed=-max_speed;


if place_meeting(x,y+4,obj_solidparent)
   {
   gravity=0;
   vspeed=0;
   }
else gravity = max_gravity+gravity_mod;

#define scr_player_collision
//Move contact with wall
move_contact_solid(direction,max_speed);

//Always reset horizontal speed
hspeed=0;

//Only if meeting below/above stop vertical speed
if (place_meeting(x,y+4,obj_solidparent) || place_meeting(x,y-4,obj_solidparent)) vspeed=0;
