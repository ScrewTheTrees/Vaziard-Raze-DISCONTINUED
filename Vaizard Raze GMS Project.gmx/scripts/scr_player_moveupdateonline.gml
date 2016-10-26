
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
   //Send the movement update NOW
   msg_send_playermove();
   msg_send_entity_move();
   alarm[0]=1; 
   }
