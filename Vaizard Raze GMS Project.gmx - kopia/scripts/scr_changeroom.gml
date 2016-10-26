///scr_changeroom(room, Entrance Point, Splash Text); 

global.enter=argument1;
global.myroom=argument0;

if !instance_exists(fade_to_black_room)
 {
 ii=instance_create(0,0,fade_to_black_room)
 ii.nroom=argument0;
 ii.mytext=argument2;
 }

 
if instance_exists(obj_player)
    {
    obj_player.ready=false;
    obj_player.hasmap=false;
    }
 
