//set the sprite.
scr_weapon_animation_set(spr_wep_busterbasic,spr_wep_busterbasic_hands,false,false,false);

//Standard shooting
if keyboard_check_pressed(global.keybind[KEY_SHOOT]) && bullets1>0
    {
    projectile=scr_projectile_spawn(x+(obj_player.facedir*16),y-36,obj_projectile_bustershot,obj_player.team,damage1,damage1,damage1,obj_player.facedir,0,obj_player.color_torso);
    scr_projectile_spawn_velocity(projectile,obj_player.facedir*14,0,0);
    projectile.alarm[1]=2; //Send creation packet
    
    scr_weapon_animation_set(spr_wep_busterbasic_normalattack,spr_wep_busterbasic_hands,true,false,false);
    msg_send_playerinfo();
    bullets1-=1;
    cooldown1=240;
    }

//Charge attack release
if keyboard_check_released(global.keybind[KEY_SHOOT]) && charge1>max_charge1
    {
    projectile=scr_projectile_spawn(x+(obj_player.facedir*16),y-36,obj_projectile_bustercharge,obj_player.team,damage1_2,damage1_2,damage1_2,obj_player.facedir,0,obj_player.color_torso);
    scr_projectile_spawn_velocity(projectile,obj_player.facedir*11,0,0);
    projectile.alarm[1]=2; //Send creation packet
    
    }

    //Special attack
if keyboard_check_pressed(global.keybind[KEY_SHOOT2])
    {
    //scr_projectile_create(x-20,y+(facedir*16),obj_projectile_busterspecial,team,damage2,damage2,damage2,facedir,0,color_torso);
    }
    
    
    
//Reset bullets using the cooldown timer
if cooldown1=0  bullets1=max_bullets1;
