#define camera_scripts

//Check the other scripts for camera functions and modification of cameras






#define scr_camera_create
//The amount of pixels left/right of players to check
global.padding=400;

//The W/H of the view for the actual screen
curr_w=view_wview;
curr_h=view_hview;

basic_w=view_wview;
basic_h=view_hview;


//Tweak to standard resolution
ww=1920;
hh=1080;

kk=ww/hh; //Mathematical camera stuff

//Dont want those expanding cameras expanding too muh ehh? XD
minimum_width=960;

maximum_width=((room_height/room_width)*room_width);




#define scr_normalcamera
//Script for the dimensional movement camera that can be user controlled (when dead or similar)

var look_up,look_down;

look_up=0;
look_down=0

if keyboard_check(global.keybind[KEY_DOWN])
look_up=250

if keyboard_check(global.keybind[KEY_UP])
look_down=250


if global.is_dead=false && instance_exists(obj_player)
{
if obj_player.facedir=1 slide_to_point(obj_player.x+300-look_up-look_down ,obj_player.y+look_up-look_down ,20)
else slide_to_point(obj_player.x-400+look_up+look_down ,obj_player.y+look_up-look_down ,20)
}

if global.is_dead=true
{
if keyboard_check(global.keybind[KEY_UP])
y-=24;

if keyboard_check(global.keybind[KEY_DOWN])
y+=24;

if keyboard_check(global.keybind[KEY_RIGHT])
x+=24;

if keyboard_check(global.keybind[KEY_LEFT])
x-=24;


//Clamp so it cant go outside room borders
if x>room_width[0]-(view_wview[0]/2)
x=room_width[0]-(view_wview[0]/2)
if x<view_wview[0]/2
x=view_wview[0]/2

if y>room_height[0]-(view_hview[0]/2)
y=room_height[0]-(view_hview[0]/2)
if y<view_hview[0]/2
y=view_hview[0]/2
}



if global.cutscene=0; //If there is a cutscene u freeze
else
{
//Calculated normal camera
x=round(x);
y=round(y);
view_xview[0]=x-(view_wview[0]/2);
view_yview[0]=y-(view_hview[0]/2);
view_wview[0]=basic_w;
view_hview[0]=basic_h;

if view_xview[0]<0 view_xview[0]=0;
if view_yview[0]<0 view_yview[0]=0;
if view_xview[0]+view_wview[0]>room_width[0] view_xview[0]=room_width[0]-view_wview[0];
if view_yview[0]+view_hview[0]>room_height[0] view_yview[0]=room_height[0]-view_hview[0];
}

#define scr_freecamera
if keyboard_check(global.keybind[KEY_UP])
y-=24;

if keyboard_check(global.keybind[KEY_DOWN])
y+=24;

if keyboard_check(global.keybind[KEY_RIGHT])
x+=24;

if keyboard_check(global.keybind[KEY_LEFT])
x-=24;



//Set camera
x=round(x);
y=round(y);
view_xview[0]=x-(view_wview[0]/2);
view_yview[0]=y-(view_hview[0]/2);
view_wview[0]=basic_w;
view_hview[0]=basic_h;

if view_xview[0]<0 view_xview[0]=0;
if view_yview[0]<0 view_yview[0]=0;
if view_xview[0]+view_wview[0]>room_width[0] view_xview[0]=room_width[0]-view_wview[0];
if view_yview[0]+view_hview[0]>room_height[0] view_yview[0]=room_height[0]-view_hview[0];



//Clamp so it cant go outside room borders
if x>room_width[0]-(view_wview[0]/2)
x=room_width[0]-(view_wview[0]/2)
if x<view_wview[0]/2
x=view_wview[0]/2

if y>room_height[0]-(view_hview[0]/2)
y=room_height[0]-(view_hview[0]/2)
if y<view_hview[0]/2
y=view_hview[0]/2

#define scr_arenacamera
//Variables for camera center
global.camerax=0;
global.cameray=0;

//Variables for scaling
global.left_x=0;
global.top_y=0;
global.right_x=0;
global.bottom_y=0;

if instance_exists(obj_player)
{
      with (obj_player)
      {
        if isdead=false
        {
        global.left_x=x;
        global.top_y=y;
        global.right_x=x;
        global.bottom_y=y;
        }
      }
}
      


global.deadchars=0;

//Obj_otherplayer is the player parent
if instance_exists(obj_playerparent)
{
      with (obj_playerparent)
      {
        if isdead=false
        if myroom=global.myroom
        {
      //Check all the four edges of the screen.
      if x-global.padding<global.left_x  global.left_x=x-global.padding;

      if y-global.padding<global.top_y  global.top_y=y-global.padding;

      if x+global.padding>global.right_x  global.right_x=x+global.padding;

      if y+global.padding>global.bottom_y  global.bottom_y=y+global.padding;

      //Add player X and Y to the collective
      global.camerax+=x;
      global.cameray+=y;
        }
        else global.deadchars+=1
      }//WIth
}//Exists

//Fix the X and Y to the center point;
if (instance_number(obj_playerparent)-global.deadchars)>0
&& (instance_number(obj_playerparent)-global.deadchars)>0
{
global.camerax=global.camerax/(instance_number(obj_playerparent)-global.deadchars);
global.cameray=global.cameray/(instance_number(obj_playerparent)-global.deadchars);
}

//Get the widths
widthx=global.right_x-global.left_x;
widthy=global.bottom_y-global.top_y;




//Make 
test_w=widthx/ww;
test_h=widthy/hh;



wanted_w=0;
wanted_h=0;


//Calculate stuff
if test_w>test_h   {wanted_w=test_w*ww       wanted_h=test_w*hh }
else {wanted_w=test_h*ww       wanted_h=test_h*hh }


if wanted_w<minimum_width   wanted_w=minimum_width;
if wanted_h*kk<minimum_width   wanted_h=minimum_width/kk;

if wanted_w>maximum_width   wanted_w=maximum_width;
if wanted_h*kk>maximum_width   wanted_h=maximum_width/kk;



slide_to_width(wanted_w,wanted_h,25)
slide_to_point(global.camerax -(wanted_w/2),global.cameray-(wanted_h/2),25);

view_wview=curr_w;
view_hview=curr_h;

//view_xview=global.left_x -(wanted_w/2);
view_xview=x;
view_yview=y;


//if view_xview>global.left_x view_xview=global.left_x;
//if view_yview>global.top_y view_yview=global.top_y;


//Clamp it to not leave the screen

if view_xview+view_wview>room_width  view_xview=room_width-view_wview;
if view_yview+view_hview>room_height  view_yview=room_height-view_hview;
if view_xview<0 view_xview=0;
if view_yview<0 view_yview=0;

#define scr_bosscamera
//Variables for camera center
global.camerax=0;
global.cameray=0;

//Variables for scaling
global.left_x=0;
global.top_y=0;
global.right_x=0;
global.bottom_y=0;

if instance_exists(obj_playerparent)
{
      with (obj_playerparent)
      {
        if isdead=false
        {
        global.left_x=x;
        global.top_y=y;
        global.right_x=x;
        global.bottom_y=y;
        }
      }
}



global.sel=0.0001;


//Obj_otherplayer is the player parent
if instance_exists(obj_player)
{
      with (obj_player)
      {
        if isdead=false
        {
      //Check all the four edges of the screen.
      if x-global.padding<global.left_x  global.left_x=x-global.padding;

      if y-global.padding<global.top_y  global.top_y=y-global.padding;

      if x+global.padding>global.right_x  global.right_x=x+global.padding;

      if y+global.padding>global.bottom_y  global.bottom_y=y+global.padding;

      //Add player X and Y to the collective
      global.camerax+=x;
      global.cameray+=y;
      
      //One more
      global.sel+=1;
        }
      }//WIth
}//Exists
else if instance_exists(obj_entityparent)
{
      with (instance_nearest(obj_player.x,obj_player.y,obj_entityparent))
      {
      //Check all the four edges of the screen.
      if x-global.padding<global.left_x  global.left_x=x-global.padding;

      if y-global.padding<global.top_y  global.top_y=y-global.padding;

      if x+global.padding>global.right_x  global.right_x=x+global.padding;

      if y+global.padding>global.bottom_y  global.bottom_y=y+global.padding;

      //Add player X and Y to the collective
      global.camerax+=x;
      global.cameray+=y;
      
      //One more
      global.sel+=1;
      }//WIth
}

//Fix the X and Y to the center point;
if (global.sel-global.deadchars)>0
&& (global.sel-global.deadchars)>0
{
//global.camerax=global.camerax/(instance_number(obj_playerparent)-global.deadchars);
//global.cameray=global.cameray/(instance_number(obj_playerparent)-global.deadchars);
global.camerax=global.camerax/(global.sel-global.deadchars);
global.cameray=global.cameray/(global.sel-global.deadchars);
}

//Get the widths
widthx=global.right_x-global.left_x;
widthy=global.bottom_y-global.top_y;






//Make 
test_w=widthx/ww;
test_h=widthy/hh;



wanted_w=0;
wanted_h=0;


//Calculate stuff
if test_w>test_h   {wanted_w=test_w*ww       wanted_h=test_w*hh }
else {wanted_w=test_h*ww       wanted_h=test_h*hh }


if wanted_w<minimum_width   wanted_w=minimum_width;
if wanted_h*kk<minimum_width   wanted_h=minimum_width/kk;

if wanted_w>maximum_width   wanted_w=maximum_width;
if wanted_h*kk>maximum_width   wanted_h=maximum_width/kk;



slide_to_width(wanted_w,wanted_h,25)
slide_to_point(global.camerax -(wanted_w/2),global.cameray-(wanted_h/2),25);

view_wview=curr_w;
view_hview=curr_h;

//view_xview=global.left_x -(wanted_w/2);
view_xview=x;
view_yview=y;


//if view_xview>global.left_x view_xview=global.left_x;
//if view_yview>global.top_y view_yview=global.top_y;


//Clamp it to not leave the screen

if view_xview+view_wview>room_width  view_xview=room_width-view_wview;
if view_yview+view_hview>room_height  view_yview=room_height-view_hview;
if view_xview<0 view_xview=0;
if view_yview<0 view_yview=0;

#define slide_to_width
///slide_to_width(w,h,divided speed)
//The lower argument2 is the faster it goes


if curr_w>argument0
curr_w-=(curr_w-argument0)/argument2
if curr_h>argument1
curr_h-=(curr_h-argument1)/argument2

if curr_w<argument0
curr_w+=(argument0-curr_w)/argument2
if curr_h<argument1
curr_h+=(argument1-curr_h)/argument2