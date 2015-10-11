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
max_gravity=2;
gravity_mod=0;     //Set to positive or negative to increase/decrease to fall faster/slower
jumpspeed=30;
jumpspeed_mod=0;   //Set to positive or negative to increase/decrease jump height/power
walljumpspeed=24;
walljumpupspeed=20;

//Movement speed things
movespeed=0;
movespeed_mod=0;   //Set to positive or negative to increase/decrease movement speed
max_movespeed=16;
movescanheight=32; //The height it scans up/down when checking for slope movement
movescanintervall=2; // Height checking per step (lower values is more precies but take more processing)





alarm[0]=30;
