if keyboard_check_pressed(global.keybind[KEY_SWAP]) 
    {
    if global.selected_weapon==1 {global.selected_weapon=2}
    else if global.selected_weapon==2 {global.selected_weapon=3}
    else global.selected_weapon=1;
    with (obj_player){msg_send_playerinfo();} //Send sprite update and movementMOD updates.
    
    }


if global.selected_weapon==1  wep_id=global.weapon1
else if global.selected_weapon==2 wep_id=global.weapon2;
else if global.selected_weapon==3 wep_id=global.weapon3;


type=global.weapon_type[wep_id];

if instance_exists(obj_player)
{
obj_player.weapon_equipped=global.weapon_type[wep_id];
obj_player.weapon_sprite=WEPSPR_BUSTERBASIC; 
//Give temporary sprite for now, let the scr_weapon_xxxx handle the final sprite.


get_weapon_basestats(type);
add_weapon_attributes(wep_id);

//Add attribute related values
damage1=damage1*(1+procentdamage);
damage2=damage2*(1+procentdamage);
damage1_2=damage1_2*(1+procentdamage);
damage2_2=damage2_2*(1+procentdamage);
damage1_3=damage1_3*(1+procentdamage);
damage2_3=damage2_3*(1+procentdamage);

damage1+=flatdamage;
damage2+=flatdamage;
damage1_2+=flatdamage;
damage2_2+=flatdamage;
damage1_3+=flatdamage;
damage2_3+=flatdamage;


if critchance>=irandom_range(1,100)
    {
    damage1+=damage1*(2+critdamage)
    damage2+=damage2*(2+critdamage)
    damage1_2+=damage1_2*(2+critdamage)
    damage2_2+=damage2_2*(2+critdamage)
    damage1_3+=damage1_3*(2+critdamage)
    damage2_3+=damage2_3*(2+critdamage)
    }


//Lastly, switch between possible weapon types
scr_step_switch_weapontype(type)


}//If player exists


//Taking care of the weapon step manuevers
//Handle weapon charging
if keyboard_check(global.keybind[KEY_SHOOT]) charge1+=1;
else charge1=0;

if keyboard_check(global.keybind[KEY_SHOOT2]) charge2+=1;
else charge2=0;


//Get those cooldowns down again
if cooldown1>0 cooldown1-=1;
if cooldown2>0 cooldown2-=1;
if cooldown1_2>0 cooldown1_2-=1;
if cooldown2_2>0 cooldown2_2-=1;


//Reset damage bonuses
procentdamage=0;
flatdamage=0;
critchance=0;
critdamage=0;
