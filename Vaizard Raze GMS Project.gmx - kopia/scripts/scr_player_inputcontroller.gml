//Basic movement
if keyboard_check(global.keybind[KEY_RIGHT])    press_right=true;
if keyboard_check(global.keybind[KEY_LEFT])     press_left=true;
if keyboard_check(global.keybind[KEY_UP])       press_up=true;
if keyboard_check(global.keybind[KEY_DOWN])     press_down=true;


if place_meeting(x,y+4,obj_solidparent)
{
do_walljump_right=false;
do_walljump_left=false;
}



if keyboard_check(global.keybind[KEY_JUMP])
   {
   press_jump=true;
   }

//Jumping
if keyboard_check_pressed(global.keybind[KEY_JUMP]) 
   {
   
   if place_meeting(x,y+4,obj_solidparent) && !place_meeting(x,y-(jumpspeed+jumpspeed_mod),obj_solidparent)
      {
      do_jump=true;
      }
   else if place_meeting(x-max_movespeed,y,obj_solidparent) && !place_meeting(x,y-(walljumpupspeed+(jumpspeed_mod/2)),obj_solidparent) //Walljump to the right
      {
      do_walljump_right=true;
      }
   else if place_meeting(x+max_movespeed,y,obj_solidparent) && !place_meeting(x,y-(walljumpupspeed+(jumpspeed_mod/2)),obj_solidparent)  // Walljump to the left
      {
      do_walljump_left=true;
      }
   }
   

   
   
   
   
