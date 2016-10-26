

if (!place_meeting(x,y+4,obj_solidparent))
    y+=4;

if (global.playerid==0)
    {
    
    if (!place_meeting(x+((sprite_width/2)*facedir),y+32,obj_solidparent))
        {
            if facedir=1 facedir=-1;
            else facedir=1;
        }
    
    
    
    if (active==false)
        {
        alarm[8] = irandom_range(360,640); //
        }
    else
        {
        if alarm[8]>=240
            {
            movespeed=max_movespeed*facedir;
            }
        else movespeed=0;
        
        if alarm[8]=230
            msg_send_entity_move();
        }
        
    }
scr_entity_movement();


if entity_health<=0
    instance_destroy();
