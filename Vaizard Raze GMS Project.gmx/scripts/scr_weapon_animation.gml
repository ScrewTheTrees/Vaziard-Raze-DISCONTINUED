if weapon_animation_playing==true
    {
    var end_frame=sprite_get_number(weapon_sprite)-1;
    
    if weapon_animation_frame>end_frame
        {
        if weapon_animation_repeat==false
            {
            scr_weapon_animation_end();
            }
        else weapon_animation_frame=0;
        }
        
    weapon_animation_frame+=1;
    
        
    
    
    }
else weapon_animation_frame=0;
    
    
