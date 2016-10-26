///scr_attribute_modify(Attribute,value,WeaponList ID)

switch (argument0)
    {
    case ATR_DAMAGE_FLAT:
    obj_weapon.flatdamage+=argument1;
    break;
    case ATR_DAMAGE_PROCENT:
    obj_weapon.procentdamage+=argument1;
    break;
    case ATR_BULLET_FLAT:
    max_bullets1+=argument1;
    max_bullets2+=argument1;
    break;
    case ATR_BULLET_PROCENT:
    max_bullets1=max_bullets1*(1+argument1);
    max_bullets2=max_bullets2*(1+argument1);
    case ATR_HEALTH_MAX:
    obj_player.player_max_health+=argument1;
    break;
    case ATR_MANA_MAX:
    obj_player.player_max_mana+=argument1;
    break;
    case ATR_STAMINA_MAX:
    obj_player.player_max_stamina+=argument1;
    break;
    case ATR_HEALTH_REGEN:
    obj_player.player_health_regen+=argument1;
    break;
    case ATR_MANA_REGEN:
    obj_player.player_mana_regen+=argument1;
    break;
    case ATR_STAMINA_REGEN:
    obj_player.player_stamina_regen+=argument1;
    break;
    case ATR_MOVEMENT_SPEED:
    obj_player.movespeed_mod+=argument1;
    break;
    case ATR_MOVEMENT_JUMP:
    obj_player.jumpspeed_mod+=argument1;
    break;
    case ATR_MOVEMENT_GRAVITY:
    obj_player.gravity_mod+=argument1;
    break;
    }//Switch

       
w=argument2;


