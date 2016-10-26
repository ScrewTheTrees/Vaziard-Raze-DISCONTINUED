//scr_collide_player()

if get_team_hostile(team,other.team)=2 && destroy_enemy==true instance_destroy();
else if get_team_hostile(team,other.team)==1 scr_player_damage(damage1);