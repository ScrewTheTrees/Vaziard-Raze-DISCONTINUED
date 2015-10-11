//Online stuff
playerid=-1;//No ID
client_ip="127.0.0.1"; //Placeholder IP


//Reset the player movement variables
scr_reset_player_input();

//Maximum speed of any vspeed/hspeed/speed thigns
max_speed=40;
facedir=1;

//Gravitational things
max_gravity=1;
gravity_mod=0;     //Set to positive or negative to increase/decrease to fall faster/slower
jumpspeed=20;
jumpspeed_mod=0;   //Set to positive or negative to increase/decrease jump height/power
walljumpspeed=12;
walljumpupspeed=8;

//Movement speed things
movespeed_mod=0;   //Set to positive or negative to increase/decrease movement speed
max_movespeed=8;
movescanheight=16; //The height it scans up/down when checking for slope movement
movescanslow=10;   //If it's above this height, move at 2/4 of normal speed instead of 3/4






alarm[0]=30;
