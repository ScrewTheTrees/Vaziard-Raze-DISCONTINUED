///add_weapon_attributes(WeaponList ID)
//argument0 is the weapon weapon in the weaponlist
//This function adds attributes to the weapons such as damage and similar


procentdamage=0;
flatdamage=0;
critchance=0;
critdamage=0;





scr_attribute_modify(global.weapon_attr1_type[argument0],global.weapon_attr1_value[argument0],argument0);
scr_attribute_modify(global.weapon_attr2_type[argument0],global.weapon_attr2_value[argument0],argument0);
scr_attribute_modify(global.weapon_attr3_type[argument0],global.weapon_attr3_value[argument0],argument0);
scr_attribute_modify(global.weapon_attr4_type[argument0],global.weapon_attr4_value[argument0],argument0);
scr_attribute_modify(global.weapon_attr5_type[argument0],global.weapon_attr5_value[argument0],argument0);
