///scr_weaponlist_remove(ID)

var ii,remove;

remove=argument0;

global.weapon_enabled[remove]=0;
global.weapon_type[remove]=0;

global.weapon_attr1_type[remove]=0;
global.weapon_attr1_value[remove]=0;
global.weapon_attr2_type[remove]=0;
global.weapon_attr2_value[remove]=0;
global.weapon_attr3_type[remove]=0;
global.weapon_attr3_value[remove]=0;
global.weapon_attr4_type[remove]=0;
global.weapon_attr4_value[remove]=0;
global.weapon_attr5_type[remove]=0;
global.weapon_attr5_value[remove]=0;



//Move all the weapons further down the list up again
for (ii=remove;ii<global.weapons_inventory_max;ii+=1)
    {
    global.weapon_enabled[ii]=global.weapon_enabled[ii+1];
    global.weapon_type[ii]=global.weapon_type[ii+1];

    global.weapon_attr1_type[ii]=global.weapon_attr1_type[ii+1];
    global.weapon_attr1_value[ii]=global.weapon_attr1_value[ii+1];
    global.weapon_attr2_type[ii]=global.weapon_attr2_type[ii+1];
    global.weapon_attr2_value[ii]=global.weapon_attr2_value[ii+1];
    global.weapon_attr3_type[ii]=global.weapon_attr3_type[ii+1];
    global.weapon_attr3_value[ii]=global.weapon_attr3_value[ii+1];
    global.weapon_attr4_type[ii]=global.weapon_attr4_type[ii+1];
    global.weapon_attr4_value[ii]=global.weapon_attr4_value[ii+1];
    global.weapon_attr5_type[ii]=global.weapon_attr5_type[ii+1];
    global.weapon_attr5_value[ii]=global.weapon_attr5_value[ii+1];
    
    }

global.weapons_inventory_max-=1;
