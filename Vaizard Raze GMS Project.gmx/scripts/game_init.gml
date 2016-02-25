random_set_seed(date_get_second_of_year(date_current_datetime())); //Since the netcode relies on this.

global.game_version="0.2";
global.netcode_version="0.1";


netcode_start();
scr_dropdown_init();
scr_weaponlist_init();


display_set_gui_size(1920,1080);

global.is_dead=false;   //Are you dead?
global.cutscene=false;  //In a cutscene?
global.enter=0;         //Entrance point in a room
global.playername="Faggot";
global.myroom=room_menu;
global.entity_id=0;     //ID's that entities use


global.difficult=3;     //How hard! ;D


global.draw_intervall=0.5;     //Drawing rate
global.fullscreen=false;
global.gamewidth=1920;
global.gameheight=1080;

global.gamewidth=1280;
global.gameheight=720;


global.keybinds=9; //How many keybinds to write to save
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

