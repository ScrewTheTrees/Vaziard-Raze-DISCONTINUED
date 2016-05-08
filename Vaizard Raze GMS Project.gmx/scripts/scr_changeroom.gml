///scr_changeroom(ROOM_, Entrance Point, Splash Text); 

global.enter=argument1
global.myroom=argument0

if !instance_exists(fade_to_black_room)
 {
 ii=instance_create(0,0,fade_to_black_room)
 ii.nroom=get_roomid(argument0);
 ii.mytext=argument2;
 }

 
