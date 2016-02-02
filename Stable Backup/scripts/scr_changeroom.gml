///scr_changeroom(Room, Entrance Point, Splash Text); 

global.enter=argument1;

if !instance_exists(fade_to_black_room)
 {
 ii=instance_create(0,0,fade_to_black_room);
 ii.nroom=argument0;
 ii.mytext=argument2;
 }