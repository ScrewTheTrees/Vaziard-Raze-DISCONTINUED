player_max_health=10000;
player_max_mana=10000;
player_max_stamina=10000;

player_health_regen=20;
player_mana_regen=50;
player_stamina_regen=100;

player_health=10000;
player_mana=10000;
player_stamina=10000;

//Variables handling temporary storage
health_max_temp = player_max_health; 
mana_max_temp = player_max_mana; 
stamina_max_temp = player_max_mana; 


//Reset state of max health/mana/stamina aswell as regen.
scr_player_reset_tempstats();


//Team is part of the health system, along with hitboxes
if object_index=obj_player team=TEAM_PLAYER;
else team=TEAM_ALLY;
