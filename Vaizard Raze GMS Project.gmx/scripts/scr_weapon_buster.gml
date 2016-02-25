//Standard shooting
if keyboard_check_pressed(global.keybind[KEY_SHOOT]) && bullets1>0
    {
    scr_projectile_create(x+(facedir*16),y,obj_projectile_bustershot,team,damage1,damage1,damage1,facedir,0,color_torso);
    
    bullets1-=1;
    cooldown1=240;
    }

//Charge attack release
if keyboard_check_released(global.keybind[KEY_SHOOT]) && charge1>max_charge1
    {
    //scr_projectile_create(x-20,y+(facedir*16),obj_projectile_bustercharge,team,damage1_2,damage1_2,damage1_2,facedir,0,color_torso);
    }

    //Special attack
if keyboard_check_released(global.keybind[KEY_SHOOT2]) && charge1>max_charge1
    {
    //scr_projectile_create(x-20,y+(facedir*16),obj_projectile_busterspecial,team,damage2,damage2,damage2,facedir,0,color_torso);
    }
    
    
    
//Reset bullets using the cooldown timer
if cooldown1=0  bullets1=max_bullets1;
