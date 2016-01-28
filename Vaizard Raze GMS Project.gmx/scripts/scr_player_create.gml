//Online stuff
playerid=-1;//No ID
client_ip="127.0.0.1"; //UDP IP adress
client_port=global.udpport_client;   //UDP Port number
client=-1; //No client
playername="Error?";
myroom=room_loading;

//Create Company objects
instance_create(x,y,obj_camera);

//Reset the player movement variables
scr_player_input_reset();
scr_player_vars_reset();

//Maximum speed of any vspeed/hspeed/speed things
max_speed=50;
max_fallspeed=20;
facedir=1;

moving=0;
moveair=0;

//Gravitational things
max_gravity=1;
gravity_mod=0;     //Set to positive or negative to increase/decrease to fall faster/slower
jumpspeed=20;
jumpspeed_mod=0;   //Set to positive or negative to increase/decrease jump height/power
walljumpspeed=14;
walljumpupspeed=14;

//Movement speed things
movespeed=0;
movespeed_mod=0;   //Set to positive or negative to increase/decrease movement speed
max_movespeed=6;
movescanheight=20; //The height it scans up/down when checking for slope movement
movescanintervall=2; // Height checking per step (how precise the checking is)


stuck=false;         //If you are stuck




alarm[0]=30;




color_legs=c_blue;
color_torso=c_red;
color_eyes=c_green;
color_hair=c_maroon;
