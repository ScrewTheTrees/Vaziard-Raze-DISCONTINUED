#define DropDown_Handler
//Reference the other parts of the script for more info

#define scr_dropdown_init
global.dropdown_max=0;
#define scr_dropdown_create
global.dropdown_max+=1;

run_id=global.dropdown_max;

global.dropdown_option[run_id,0]="";
global.dropdown_isdown[run_id]=false;
global.dropdown_step[run_id]=0;
global.dropdown_selection[run_id]=1;
global.dropdown_x[run_id]=0;
global.dropdown_y[run_id]=0;
global.dropdown_option_max[run_id]=0;
global.dropdown_option_show[run_id]=4;

global.dropdown_startid[run_id]=0;
global.dropdown_addid[run_id]=0;
global.dropdown_transtimer[run_id]=30;



//Please make sure that image 0 is the top, image 1 is the middle and image 2 is the bottom
global.dropdown_sprite[run_id]=0;
global.dropdown_scrollsprite[run_id]=0;
global.dropdown_font[run_id]=0;

global.dropdown_textcolor[run_id]=c_black;
global.dropdown_boxcolor[run_id]=c_white;
global.dropdown_boxalpha[run_id]=0.8;


return (global.dropdown_max);

#define scr_dropdown_draw
///scr_dropdown_draw(ID);


run_id=argument0;


transtimer=global.dropdown_transtimer[run_id];

ww=sprite_get_width(global.dropdown_sprite[run_id]);
hh=sprite_get_height(global.dropdown_sprite[run_id]);

bw=sprite_get_width(global.dropdown_scrollsprite[run_id]);
bh=sprite_get_height(global.dropdown_scrollsprite[run_id]);

xx=global.dropdown_x[run_id];
yy=global.dropdown_y[run_id];


textx = xx+(ww/2);
texty = yy+(hh/2);



if mouse_wheel_up() && global.dropdown_addid[run_id]>0 && global.dropdown_isdown[run_id]==true
global.dropdown_addid[run_id]-=1;

if mouse_wheel_down() && global.dropdown_isdown[run_id] 
&& global.dropdown_addid[run_id]+global.dropdown_option_show[run_id]<global.dropdown_option_max[run_id]
global.dropdown_addid[run_id]+=1;


draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

draw_set_color(c_white);
draw_set_alpha(1);

if (global.dropdown_step[run_id]!=0)
{
for(j=1; j<=global.dropdown_option_show[run_id];j+=1)
{

if  (j<global.dropdown_option_show[run_id]) {
    draw_set_color(global.dropdown_boxcolor[run_id]);
    draw_set_alpha(global.dropdown_boxalpha[run_id]);
    draw_sprite(global.dropdown_sprite[run_id],1,xx,yy+((hh*( global.dropdown_step[run_id]/transtimer ))*j)  );
    
    draw_set_alpha(1);
    draw_set_color(global.dropdown_textcolor[run_id]);
    draw_text(textx,texty+((hh*( global.dropdown_step[run_id]/transtimer ))*j),global.dropdown_option[run_id,global.dropdown_addid[run_id]+j])
    }
else if (j=global.dropdown_option_max[run_id] or j=global.dropdown_option_show[run_id]) {
    draw_set_color(global.dropdown_boxcolor[run_id]);
    draw_set_alpha(global.dropdown_boxalpha[run_id]);
    draw_sprite(global.dropdown_sprite[run_id],2,xx,yy+((hh*( global.dropdown_step[run_id]/transtimer ))*j)  );
    draw_sprite(global.dropdown_scrollsprite[run_id],0,xx+ww,yy+((hh*( global.dropdown_step[run_id]/transtimer ))*j) )
    
    draw_set_color(global.dropdown_textcolor[run_id]);
    draw_set_alpha(1);
    draw_text(textx,texty+((hh*( global.dropdown_step[run_id]/transtimer ))*j),global.dropdown_option[run_id,global.dropdown_addid[run_id]+j])
    }
}
}//Is open
draw_set_color(global.dropdown_boxcolor[run_id]);
draw_set_alpha(global.dropdown_boxalpha[run_id]);
draw_sprite(global.dropdown_sprite[run_id],0,xx,yy);
draw_sprite(global.dropdown_scrollsprite[run_id],1,xx+ww,yy)

draw_set_color(global.dropdown_textcolor[run_id]);
draw_set_alpha(1);
draw_text(textx, texty , global.dropdown_option[run_id,global.dropdown_selection[run_id]] );




if global.dropdown_isdown[run_id]==false && global.dropdown_step[run_id]>0
global.dropdown_step[run_id]-=1;

if global.dropdown_isdown[run_id]==true && global.dropdown_step[run_id]<transtimer
global.dropdown_step[run_id]+=1;


if mouse_check_button_pressed(mb_right)
{
    global.dropdown_isdown[run_id]=false;
}

if mouse_check_button_pressed(mb_left)
{
    for(j=1; j<=global.dropdown_option_show[run_id];j+=1)
    {
        
        if get_mouse_in(xx,yy+(hh*j),xx+ww,yy+hh+(hh*j)) && global.dropdown_isdown[run_id]==true
        {
        global.dropdown_isdown[run_id]=false;
        global.dropdown_selection[run_id]=j+global.dropdown_addid[run_id];
        }
    
    }
        if get_mouse_in(xx,yy,xx+ww,yy+hh)
            {
        global.dropdown_isdown[run_id]=true;
            }
            
        else if get_mouse_in(xx+ww,yy,xx+ww+bw,yy+bh)
            {
                if global.dropdown_addid[run_id]>0 && global.dropdown_isdown[run_id]==true
                global.dropdown_addid[run_id]-=1;
            }
        else if get_mouse_in(xx+ww,yy+(global.dropdown_option_show[run_id]*hh),xx+ww+bw,yy+bh+(global.dropdown_option_show[run_id]*hh))
            {
                if global.dropdown_isdown[run_id] 
                && global.dropdown_addid[run_id]+global.dropdown_option_show[run_id]<global.dropdown_option_max[run_id]
                global.dropdown_addid[run_id]+=1;
            }
            
        else 
            {
            global.dropdown_isdown[run_id]=false;
            }
}







draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_alpha(1);
draw_set_color(c_white);

#define scr_dropdown_add
///scr_dropdown_add(ID,OPTION,NAME)

run_id=argument0;
option_id=argument1;
name_id=argument2;


global.dropdown_option[run_id,option_id]=name_id;


//Make sure that the dropbox adds all teh shit
if option_id>global.dropdown_option_max[run_id]
global.dropdown_option_max[run_id]=option_id;

#define scr_dropdown_position
///scr_dropdown_position(ID,X,Y)
run_id=argument0;
dx=argument1;
dy=argument2;

global.dropdown_x[run_id]=dx;
global.dropdown_y[run_id]=dy;

#define scr_dropdown_sprite
///scr_dropdown_sprite(ID,SPR);
run_id=argument0;

global.dropdown_sprite[run_id]=argument1;

#define scr_dropdown_font
///scr_dropdown_font(ID,FONT);
run_id=argument0;

global.dropdown_font[run_id]=argument1;

#define scr_dropdown_standard
///scr_dropdown_standard(ID,INT);
//The standard choice
run_id=argument0;

global.dropdown_selection[run_id]=argument1;

#define scr_dropdown_scrolltimer
///scr_dropdown_scrolltimer(ID,FRAMES);
run_id=argument0;

global.dropdown_transtimer[run_id]=argument1;

#define scr_dropdown_colors
///scr_dropdown_colors(ID,BoxColor,TextColor);
run_id=argument0;

global.dropdown_boxcolor[run_id]=argument1;
global.dropdown_textcolor[run_id]=argument2;

#define scr_dropdown_alpha
///scr_dropdown_alpha(ID,ALPHA);
run_id=argument0;

global.dropdown_boxalpa[run_id]=argument1;
