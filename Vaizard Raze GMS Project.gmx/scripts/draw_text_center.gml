///draw_text_center(x,y,string,color,font,alpha)

if !argument3=0
draw_set_color(argument3);
if !argument4=0
draw_set_font(argument4);
if !argument5=0
draw_set_alpha(argument5);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

draw_text(argument0,argument1,argument2)

draw_set_color(c_white)
draw_set_font(font12a);
draw_set_alpha(1)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
