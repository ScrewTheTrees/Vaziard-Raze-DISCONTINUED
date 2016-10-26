if instance_exists(obj_mapgenerator_type1)
    {
    if (obj_mapgenerator_type1.done==true)
        active=true;
    else active=false;
    }
else active=true;


if (!place_meeting(x,y+2,obj_solidparent))
    y+=2;

    
    if (!place_meeting(x+(movespeed*facedir),y+movescanheight,obj_solidparent))
        {
            if facedir=1 facedir=-1;
            else facedir=1;
        }
    
if (global.playerid==0)
    {
    
    if (active==false)
        {
        alarm[8] += 1; //
        }
    else
        {
        if alarm[8]>=240
            {
            movespeed=max_movespeed;
            }
        else movespeed=0;
        
        
        }
        if alarm[8]=2 alarm[0]=3;
        
        if alarm[8]==230
            msg_send_entity_move();
        
    }


if entity_health<=0
    {
    instance_destroy();
    msg_send_entity_health();
    }
    
    
    
scr_entity_movement();
