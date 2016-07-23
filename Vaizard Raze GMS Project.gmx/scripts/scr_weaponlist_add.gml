///scr_weaponlist_add(Type,Attr1Type,Attr1Value,Attr2Type,Attr2Value,Attr3Type,Attr3Value,Attr4Type,Attr4Value,Attr5Type,Attr5Value)

var found,searchid;

found=false;
searchid=global.weapons_inventory_max;



global.weapon_enabled[searchid]=true
global.weapon_type[searchid]=argument0;


    global.weapon_attr1_type[searchid]=argument1;
    global.weapon_attr1_value[searchid]=argument2;
    global.weapon_attr2_type[searchid]=argument3;
    global.weapon_attr2_value[searchid]=argument4;
    global.weapon_attr3_type[searchid]=argument5;
    global.weapon_attr3_value[searchid]=argument6;
    global.weapon_attr4_type[searchid]=argument7;
    global.weapon_attr4_value[searchid]=argument8;
    global.weapon_attr5_type[searchid]=argument9;
    global.weapon_attr5_value[searchid]=argument10;

    
global.weapons_inventory_now=global.weapons_inventory_max;
global.weapons_inventory_max+=1;