///scr_changeroom(ROOM_, Entrance Point, Splash Text); 

global.enter=argument1
global.myroom=argument0

if !instance_exists(fade_to_black_room)
 {
 ii=instance_create(0,0,fade_to_black_room)
 switch (argument0)
 {
 case ROOM_TEST: ii.nroom=room_test break;

 }
}

 ii=instance_create(0,0,fade_to_black_room);
 ii.nroom=argument0;
 ii.mytext=argument2;
