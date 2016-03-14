random_set_seed(date_get_second_of_year(date_current_datetime())); //Since the netcode relies on this.

global.game_version="0.2";
global.netcode_version="0.1";

options_variables();
netcode_start();
scr_dropdown_init();
scr_weaponlist_init();


display_set_gui_size(1920,1080);

global.is_dead=false;   //Are you dead?
global.cutscene=false;  //In a cutscene?
global.enter=0;         //Entrance point in a room
global.playername="FaggotOrFriend";
global.myroom=room_menu;//Room you are in
global.entity_id=0;     //ID's that entities use


global.difficult=3;     //How hard! ;D

