global.draw_intervall=0.25;     //Drawing rate
global.fullscreen=false;
global.gamewidth=1920;
global.gameheight=1080;

global.particle_rate=1;     //Randomizer rate for particles, using irandom so 100%, 50% 33%, 25%


global.shorttrails=false;




global.keybind[KEY_RIGHT]=vk_right;
global.keybind[KEY_LEFT]=vk_left;
global.keybind[KEY_UP]=vk_up;
global.keybind[KEY_DOWN]=vk_down;
global.keybind[KEY_JUMP]=ord("Z");
global.keybind[KEY_SHOOT]=ord("X");
global.keybind[KEY_SHOOT2]=ord("C");
global.keybind[KEY_ABILITY1]=ord("A");
global.keybind[KEY_ABILITY2]=ord("S");
global.keybind[KEY_ABILITY3]=ord("D");
global.keybind[KEY_SPECIAL]=vk_shift;
global.keybind[KEY_SWAP]=vk_space;

global.keybinds=array_length_1d(global.keybind)-1; //How many keybinds to write to save (first is 0)
