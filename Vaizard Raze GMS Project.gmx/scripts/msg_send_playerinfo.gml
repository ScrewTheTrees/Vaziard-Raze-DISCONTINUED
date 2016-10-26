with (obj_player)  //Only the player should send this packet of player related variables anyway
{

    clearbuffer(0);
    writebyte(MSG_PLAYERINFO,0);
    writeushort(global.playerid,0)
    
    //booleans
    byte=buildbyte(inmission,ready,hasmap,weapon_animation_playing,weapon_animation_repeat,weapon_animation_arms_animate,0,0);
    writebyte(byte,0);
    
    
    
    writeshort(weapon_equipped,0);
    writeshort(weapon_sprite,0);
    writeshort(arms_sprite,0);
    writeshort(weapon_animation_frame,0);
    
    
    
    if global.playerid=0
    scr_send_client(SEND_ALL,0)
    else scr_send_server();
    
    clearbuffer(0);


}//with

