///scr_player_damage(Damage)
dmg=argument0;


other.player_health-=dmg;

other.alarm[2]=20; //Set player timer before sync of health


if destroy_enemy==true instance_destroy();
