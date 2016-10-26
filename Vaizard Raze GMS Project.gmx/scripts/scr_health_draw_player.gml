var interval,spacing;

interval=1000;
spacing=32;

//Health
for (var i = 0; i*interval <= health_max_temp; i+=1)
{
    if i < player_health*interval draw_sprite(spr_healthbar,0,128+(i*spacing),64);
    else draw_sprite(spr_healthbar,1,128+(i*spacing),64);
}

//Mana
for (var i = 0; i*interval <= mana_max_temp; i+=1)
{
    if i < player_mana*interval draw_sprite(spr_manabar,0,128+(i*spacing),128);
    else draw_sprite(spr_manabar,1,128+(i*spacing),128);
}
