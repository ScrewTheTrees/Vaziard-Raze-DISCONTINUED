//Create variables for weapons and their attributes
global.weapons_inventory_max=0;
global.weapons_inventory_now=0;

for (ii=0;ii<20000;ii+=1)
{
global.weapon_enabled[ii]=0;
global.weapon_type[ii]=0;

global.weapon_attr1_type[ii]=0;
global.weapon_attr1_value[ii]=0;
global.weapon_attr2_type[ii]=0;
global.weapon_attr2_value[ii]=0;
global.weapon_attr3_type[ii]=0;
global.weapon_attr3_value[ii]=0;
global.weapon_attr4_type[ii]=0;
global.weapon_attr4_value[ii]=0;
global.weapon_attr5_type[ii]=0;
global.weapon_attr5_value[ii]=0;
}

scr_weaponlist_add(WEP_BUSTER,0,0,0,0,0,0,0,0,0,0);
scr_weaponlist_add(WEP_BUSTER,ATR_DAMAGE_PROCENT,0.10,ATR_DAMAGE_FLAT,100,0,0,0,0,0,0);
scr_weaponlist_add(WEP_BUSTER,ATR_DAMAGE_PROCENT,0.20,ATR_DAMAGE_FLAT,500,ATR_MOVEMENT_SPEED,2,ATR_MOVEMENT_GRAVITY,-0.2,0,0);
