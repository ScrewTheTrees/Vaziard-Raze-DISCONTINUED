if global.playerid=0 mystep+=1;



switch(mystep)
{
case 2: scr_type1_generate_ceiling() break;
case 4: scr_type1_generate_ground() break;
case 6: scr_type1_generate_hplatforms() break;
case 8: scr_type1_generate_vplatforms() break;
case 10: scr_generate_tweakblocks() break;


case 12: scr_debuggrid_create(); break;
case 14: scr_generate_entrance() break;
case 16: scr_generate_exit() break;

case 30:
global.bad=false;

with (obj_otherplayer)
{
    if inmission=true
    {
        if (ready==false or mapsent=true)
        {
            global.bad=true;
        }
        else if hasmap==false
        {
            mapsent=true;
            msg_send_map_blocks();
            msg_send_map_props();
        }
    }
}
    with (obj_player) scr_entity_freeze();
    if global.bad=true mystep-=2; //Go back and check again
break;


}

//Dont want him falling outside the map
if !instance_exists(obj_entrance_stage) with (obj_player) scr_entity_freeze();
