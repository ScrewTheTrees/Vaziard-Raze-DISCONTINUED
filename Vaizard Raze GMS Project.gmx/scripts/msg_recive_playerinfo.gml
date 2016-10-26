if instance_exists(obj_playerparent)
{
    
    tempid=readushort(0);
    
    
    obj_playerparent.tempid=tempid;
    
    with(obj_playerparent)
    {
        if playerid==tempid
        {
            byte=readbyte(0);
        
            weapon_equipped=readshort(0);
            weapon_sprite=readshort(0);
            arms_sprite=readshort(0);
            weapon_animation_frame=readshort(0);
        
            inmission=readbit(byte,7);
            ready=readbit(byte,6);
            hasmap=readbit(byte,5);
            weapon_animation_playing=readbit(byte,4);
            weapon_animation_repeat=readbit(byte,3);
            weapon_animation_arms_animate=readbit(byte,2);
        }
    }//With
    
    
    
    if global.playerid==0
    {
    scr_send_client(SEND_OTHER,0);
    clearbuffer(0);
    }
}
