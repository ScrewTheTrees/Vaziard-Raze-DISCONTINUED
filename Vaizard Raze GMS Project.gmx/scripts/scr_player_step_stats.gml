if player_health<player_max_health
player_health+=player_health_regen;

if player_health>player_max_health
player_health=player_max_health;


if player_mana<player_max_mana
player_mana+=player_mana_regen;

if player_mana>player_max_mana
player_mana=player_max_mana;


if player_stamina<player_max_stamina
player_stamina+=player_stamina_regen;

if player_stamina>player_max_stamina
player_stamina=player_max_stamina;



scr_player_reset_tempstats(); //Reset temp stats. they are not neccessary anymore