///scr_weaponlist_add(Type,Attr1Type,Attr1Value,Attr2Type,Attr2Value,Attr3Type,Attr3Value,Attr4Type,Attr4Value,Attr5Type,Attr5Value)

var found,searchid;

found=false;
searchid=0;

while (found==false)
    {
    if global.weapon_enabled[searchid]==false
        found=true;
    else searchid+=1;
    }
    
global.weapon_enabled[searchid]=true
global.weapon_type[searchid]=argument[0];

if argument_count>1
    {
    global.weapon_attr1_type[searchid]=argument[1];
    global.weapon_attr1_value[searchid]=argument[2];
    }

if argument_count>3
    {
    global.weapon_attr2_type[searchid]=argument[3];
    global.weapon_attr2_value[searchid]=argument[4];
    }
    
if argument_count>5
    {
    global.weapon_attr3_type[searchid]=argument[5];
    global.weapon_attr3_value[searchid]=argument[6];
    }
    
if argument_count>7
    {
    global.weapon_attr4_type[searchid]=argument[7];
    global.weapon_attr4_value[searchid]=argument[8];
    }

if argument_count>9
    {
    global.weapon_attr5_type[searchid]=argument[9];
    global.weapon_attr5_value[searchid]=argument[10];
    }


global.weapons_inventory_max+=1;
