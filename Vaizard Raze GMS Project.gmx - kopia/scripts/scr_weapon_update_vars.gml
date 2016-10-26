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
