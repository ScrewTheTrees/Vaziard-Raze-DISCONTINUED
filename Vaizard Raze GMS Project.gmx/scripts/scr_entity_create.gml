///scr_entity_create(Health,Mana,Stamina,Team)

entityid=get_entity_id(); //Irrelevant for non hosts but yah know.

entity_max_hp=argument0;
entity_max_mp=argument1;
entity_max_sp=argument2;
team=argument3;

entity_health_regen=20;
entity_mana_regen=50;
entity_stamina_regen=100;

entity_bonus_health=0;
entity_bonus_mana=0;
entity_bonus_stamina=0;
entity_hp=entity_max_hp;
entity_mp=entity_max_mp;
entity_sp=entity_max_sp;

alarm[1]=2;

//Maximum speed of any vspeed/hspeed/speed things
max_speed=50;
max_fallspeed=20;
facedir=1;

moving=0;
moveair=0;
isdead=false;

//Gravitational things
max_gravity=0.75;
gravity_mod=0;     //Set to positive or negative to increase/decrease to fall faster/slower
jumpspeed=16;
jumpspeed_mod=0;   //Set to positive or negative to increase/decrease jump height/power
walljumpspeed=14;
walljumpupspeed=12;

//Movement speed things
movespeed=0;
movespeed_mod=0;   //Set to positive or negative to increase/decrease movement speed
max_movespeed=6;   //Actual moving speed of character
movescanheight=20; //The height it scans up/down when checking for slope movement
movescanintervall=2; // Height checking per step (how precise the checking is)


stuck=false;         //If you are stuck

movemodtimer=30;



alarm[0]=30;
