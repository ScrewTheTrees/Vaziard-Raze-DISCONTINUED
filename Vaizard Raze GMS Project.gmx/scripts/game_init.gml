netcode_start();
scr_dropdown_init();

global.is_dead=false;   //Are you dead?
global.cutscene=false;  //In a cutscene?

global.difficult=3;


global.draw_intervall=0.5;     //Drawing rate
global.fullscreen=false;
global.gamewidth=1920;
global.gameheight=1080;


global.keybinds=9; //How many keybinds to write to save
global.keybind[KEY_RIGHT]=vk_right;
global.keybind[KEY_LEFT]=vk_left;
global.keybind[KEY_UP]=vk_up;
global.keybind[KEY_DOWN]=vk_down;
global.keybind[KEY_JUMP]=ord("Z");
global.keybind[KEY_SHOOT]=ord("X");
global.keybind[KEY_ABILITY1]=ord("C");
global.keybind[KEY_ABILITY2]=ord("A");
global.keybind[KEY_ABILITY3]=ord("S");
global.keybind[KEY_SPECIAL]=vk_space;



