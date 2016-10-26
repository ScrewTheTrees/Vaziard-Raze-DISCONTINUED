var interval,spacing;

interval=1000;
spacing=32;

//Health
for (var i = 0; i*interval <= entity_health+entity_bonus_health; i+=1)
{
    if i < entity_health*interval draw_sprite(spr_healthbar,0,128+(i*spacing),64);
    else draw_sprite(spr_healthbar,1,128+(i*spacing),64);
}

//Mana
for (var i = 0; i*interval <= entity_mana+entity_bonus_mana; i+=1)
{
    if i < entity_mana*interval draw_sprite(spr_manabar,0,128+(i*spacing),128);
    else draw_sprite(spr_manabar,1,128+(i*spacing),128);
}
