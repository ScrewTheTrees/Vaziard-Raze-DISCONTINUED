if (object_index==obj_player)
    {
    scr_entity_create(10000,10000,10000,TEAM_PLAYER);
    }
else scr_entity_create(10000,10000,10000,TEAM_ALLY);


//Online stuff
playerid=-1;//No ID
client_ip="127.0.0.1"; //UDP IP adress
client_port=global.udpport_client;   //UDP Port number
client=-1; //No client
playername="Error?";
myroom=room_loading;

//Map sending and such
inmission=false;
ready=false;
hasmap=false;
mapsent=false;


//Reset the player movement variables

scr_player_input_reset();
scr_player_vars_reset();






weapon_equipped=WEP_NOONE;
weapon_sprite=spr_noone;
arms_sprite=spr_noone;
weapon_animation_frame=0;
weapon_animation_playing=false;
weapon_animation_repeat=false;
weapon_animation_arms_animate=false;



color_legs=c_blue;
color_torso=c_red;
color_torso_extra=c_green;
color_eyes=c_green;
color_hair=c_maroon;
