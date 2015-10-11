#define scr_player_move
//Reset that shit
scr_reset_playermove_input();

//If this is the player it needs to accept the input
if object_index==obj_player
   {
   scr_inputcontroller();
   }

#define scr_inputcontroller
//Basic movement
if keyboard_check(global.keybind[KEY_RIGHT])    press_right=true;
if keyboard_check(global.keybind[KEY_LEFT])     press_left=true;
if keyboard_check(global.keybind[KEY_UP])       press_up=true;
if keyboard_check(global.keybind[KEY_DOWN])     press_down=true;


//Jumping
if keyboard_check_pressed(global.keybind[KEY_JUMP]) 
   {
   if place_meeting(x,y+4,obj_solidparent)
      {
      do_jump=true;
      }
   else if place_meeting(x-max_movespeed
   }

#define scr_reset_playermove_input
press_right=false;
press_left=false;
press_up=false;
press_down=false;

press_ability1=false;
press_ability2=false;
press_ability3=false;

press_special=false;


do_jump=false;
do_sidedash_right=false;
do_sidedash_left=false;

do_walljump_right=false;
do_walljump_left=false;
