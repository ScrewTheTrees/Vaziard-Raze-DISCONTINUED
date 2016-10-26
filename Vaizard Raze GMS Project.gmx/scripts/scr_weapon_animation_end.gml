//returns nothing, simply a list of what the sprite should be set to after finish animation
switch (weapon_sprite)
{
case spr_wep_busterbasic_normalattack:
    weapon_sprite=spr_wep_busterbasic;
    hands_sprite=spr_wep_busterbasic_hands;
    break;
}

weapon_animation_playing=false;
