//Online stuff
playerid=-1;//No ID
client_ip="127.0.0.1"; //Placeholder IP


//Reset the player movement variables
scr_reset_player_input();
scr_reset_player_vars();

//Maximum speed of any vspeed/hspeed/speed things
max_speed=40;
facedir=1;

//Gravitational things
max_gravity=1;
gravity_mod=0;     //Set to positive or negative to increase/decrease to fall faster/slower
jumpspeed=20;
jumpspeed_mod=0;   //Set to positive or negative to increase/decrease jump height/power
walljumpspeed=12;
walljumpupspeed=14;

//Movement speed things
movespeed=0;
movespeed_mod=0;   //Set to positive or negative to increase/decrease movement speed
max_movespeed=8;
movescanheight=16; //The height it scans up/down when checking for slope movement
movescanintervall=1; // Height checking per step (lower values is more precies but take more processing)





alarm[0]=30;
