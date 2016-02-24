if global.selected_weapon=1  wep_id=global.weapon1
else if global.selected_weapon=2 wep_id=global.weapon2;


type=global.weapon_type[wep_id];


get_weapon_basestats(type);
